### What's the code trying to do?

#### **Natural Products**

You may have already looked at the **NP** section of `functions.R`. In simple terms, here is what the code is doing:

* It pulls out the appropriate data layers to find out the amount of each product per unit area. It does gap-filling as necessary for the Global data.

><!---Alt text--->It should be noted that in the Global Assessments, the harvested amounts are derived from the information from the Food and Agriculture Organization of the United Nations (FAO), and these are combined with habitat values used elsewhere in the assessment. You should be conscious of this as you go through the model and change it, because you may be able to simplify aspects of the code such as gap-filling.

* It calculates Exposure by finding how intensely each identified product is being harvested (amount of product per km^2), and then transforms this from a scale from 0 to 1.

> TIP: The data layer, `hab_extent` is used here and in other goal models in the default code for the Global Assessment.

* In parallel to this, it finds the Risk of each product based on a scoring system that becomes binary: 0, or 1.

* It then averages the two factors, Exposure and Risk, to reveal where risk and intensity are highest. This value is then inverted to become Sustainability and to reward lower intensity and lower risk.

* The amount of each kind of product, relative to the peak historical yield of that product across all regions assessed, and Sustainability are both used create sustainability-weighted scores for all regions and all years available.

* The latest year value is used in the status, and the past few years' values are used in the trend to produce the final score.

<!---I think this diagram is more confusing than explicative because it implies these data are spatial, but not all of them are--->

**Figure needed?** Diagram of sustainability calculation, NP; or perhaps a time-series of the available products in country X in order to show where the peak yield would be.]

#### Data Sources

If the case is that corals, sponges, and  then you might be able to use FAO data, which is the data source of the Global Assessments. Otherwise, you will have to find comparable data in your area or consult local statistical offices and local fisheries managers to get harvest values similar to landing values and any other kinds of stock assessments. The IUCN offers quantified assessments of risk to species, but that is more appropriate for biodiversity; CITES signatory data may be more appropriate for the trade products. Exposure can be calculated spatially, and for this you should be able to find or produce your own maps if possible. Your maps might have finer resolution than those in global resolution.

#### Gap-filling

> TIP: When checking your data, check cases where country-product pair has 0 for sustainability score, but relatively high harvest ratio (curr harvest/peak harvest) – it may be a flag that the sustainability score is off (eg because the habitat area is off)

> TIP: Explore simplifying gap-filling: use correlation model of dollar value vs. harvested tonnage, while discarding the part of script using dollar ratio (current dollar value)/(peak dollar value) as a gap-filler for harvest ratio.

> TIP: Switch the gap-filling order: using the dollar value correlation model first (in cases where the most recent year has no harvest reported but has dollar value reported, that’s a better estimate than using the harvest from the previous year), then gap-fill any remaining cases of missing harvest for the current year with harvest from the previous year

### Appendix - source materials
#### Global Data Approach (Technical Notes)

**Data Overview**

product | relative tonnes (1) | weighting (2) | Exposure (3) | Risk (4)
----------|---------------------|-------------|--------------|------
coral | FAO |  FAO | coral habitat | all 1
sponges | FAO | FAO | coral + rocky reef habitat | all 0
ornamentals | FAO | FAO | coral + rocky reef habitat | 1 if blast/cyanide fishing, otherwise 0
fish oil | FAO | FAO | fish score/100 | --
shells | FAO | FAO | coral + rocky reef habitat | all 0
seaweeds | FAO | FAO | rocky reef habitat | --

(1) relative tonnes: tonnes relative to max tonnes for region with 35% buffer.  The maximum corresponds to the year with the highest $ value - but it would probably be better to just base this off tonnes.  When we redo these data lets evaluate this approach.
(2) weighting: This weights the contribution of each product according to USD at max year for a region. It makes sense to use $, because comparing extraction weight of sponges vs. ornamentals doesn't make sense.
(3) Exposure: For fish oil this value is the FIS score (which is a bit different than what is described in the paper because FIS score can have penalties for underfishing).  The other values are determined by:
log (harvest/habitat area + 1) / log[max(harvest/habitat area) +1].

The habitat area used for seaweeds: rocky reef
The habitat area used for coral: coral
The habitat area used for shells, ornamentals, sponges: coral plus rocky reef

#### Notes: Preparing the Data

<!---Notes from Katie while updating the NP goal -- MOVED UP--->
-

#### Notes: Tech Specs

<!---Note on Updating the Script: I just pushed a new script, `data_prep_2015a.R`, and the resulting outputs to `ohiprep/globalprep/fao_commodities/v2015`.  The new script reworks the gap-filling, based on Mel's and Katie's suggestions.  I'll post later about the smoothing and calculations based on new input from Katie, but would love to get input on the gap-filling first.
* Before gap-filling, binds the USD and tonnes data for all natural products at the commodity level (rather than product level).
* By commodity & year: Identifies years with neither USD nor tonnes data, flags as `no_data`, and determines first reporting year based on first year with either data (and deletes years prior to this).
* By commodity & year: Gap-fills according to these rules:
    * If `no_data`, and not the last year of data set, assume that non-reporting means zero harvest; replace `NA` with `0` for both USD and tonnes
    * Create regression models for `(tonnes ~ USD)` and `(USD ~ tonnes)`
        * Exclude NAs (these will be in either USD or tonnes, but not both)
        * Remove all commodities with fewer than four non-zero observations (within a particular region)
            * not enough info for a decent regression or meaningful peak
            * counting these could also penalize experimental production that later stops
        * Use `lm()` to generate slope/intercept, and gap-fill all NAs with the appropriate regression model
        * Regression gap-filling takes care of the most current-year gaps, per Katie's comment
        * Regression gap-filling fails for certain data, where there are no paired observations for correlation (e.g. every reported value for USD shows NA for tonnes, and/or vice versa), still need to figure out how to deal with those without losing useful data.
    * If `no_data` appears in most recent year of data set, not applicable for regression gap-fill, so end-fill based upon the prior year.
    * Outputs a .csv with rgn_id, commodity, product, year, and gapfill method at the commodity level.  I made up text codes for now, pretty self-explanatory, but those are easy to change.  File is `data/np_gapfill_report.csv` if you want to take a peek.
* Collapses commodities into products at this point, in preparation for smoothing, finding peaks, and determining status and weighting.

Latest on NP:
in ohiprep/globalprep/FAO-commodities, new (well, a week or so ago) data_prep2015.R that fixes:
* the FAO data cleaning, so treats '0 0' as 0.1 instead of NA
* gap filling:
    * it runs at commodity level instead of product level
    * gapfills between USD and tonnes in sequence: local regression, then georegional regression, then global regression.
    * does all that before end-filling.
    * produces a gapfilling report for every commodity/region/year.
Currently this outputs a single file; needs to be updated to output individual files for tonnes, tonnes_rel, and prod_weight.  Needs to be renamed to data_prep.R.

In ohi-global/eez2013, LSP_update branch, I've updated /conf/functions.R - cleaned up (dplyr, etc), chunked into sub-functions.  Questions that need to be addressed:
* currently calcs trend using last five years of data (year_max >= year > year_max-5), which means only four intervals for the regression.  I think we want to include the (year_max - 5) data, for five intervals, so: (year_max >= year >= year_max-5).
* currently, for regions with exposure = NA, replaces NAs with zero.  Should these be replaced with one instead?
    * Exposure for these indicates harvest intensity (tonnes/km^2) relative to the region with the max harvest intensity.
    * NAs occur when a country hasn't reported area values for rocky (seaweeds), coral (corals), so tonnes/NA = NA.
    * Setting exposure to zero means intensity = none at all (boosting the status); leaving as NA removes from calculation (ignored in status); setting to one means intensity = worst case (penalizing the status).--->

    <!---Note Ecuador's approach to Natural Products:
    Very low data for species, so it has been hard to advance this goal, unknown for each global product. but they did look up FAO data and found 3 products by country
    but they need to be looking for data for things they actually produce, like madera, leña de manglares, sea horses, they do have data for ornamental species in Sta Elena (not sure if they have data (tonnes) of catch of these species) they have good resilience measures, should add these Maybe they should ignore this goal all together? → they can decide to, but first I think they should think about what natural products are actually important to the area: we’ve heard about mangrove wood before--->

    <!---SPP status takes into account the IUCN score and the area that the species occupies (although the results are not exactly equivalent to an area weighted average).  Specifically, the values are calculated at the spatial scale of the raster cells (which I believe is at 0.5 degree resolution).  For each raster cell, the IUCN scores of the species are averaged to get a score. To get status, the raster cell scores within an EEZ are then averaged (after weighting for the area of the raster cell).
    ICO status is calculated by taking the average of the IUCN ratings for all the iconic species in the EEZ. --->

    <!---SPECIES he original logic was to represent the species present relative to the proportion of their range within a given EEZ.  We may also have wanted to avoid penalizing a region too heavily if only a very small portion of the range came from a very threatened species.  I think we were also worried about bad aqua maps data that could misallocate species into a country and having a big effect.

    A disadvantage is that rare species (and those with contracting ranges) will have a relatively small influence on the score.  Common species will, in most cases, drive the results.

    An advantage is (actually a disadvantage of averaging species scores at the EEZ level): "The bigger an area, the more likely you are to find rare at risk species (the classic problem of species-area relationships or SARs) - so bigger countries would have lower diversity scores just as a function of their size but not actual poorer biodiversity. In regards to sampling effort, the number of rare species increases faster than the number of common species, so they would not even each other out."--->

    <!---SPECIES. For the global assessment, we started with a list of iconic species, and then found which ones had been assessed, in this case by IUCN. So from that original list of iconic species, we could only include the ones assessed by IUCN. IUCN scores are categorical ('extinct', 'least concern', etc), but Butchart et al. (attached) had done a study where they assigned numeric scores to each IUCN category. So we took the list of iconic species that had IUCN categories and assigned Butchart's numeric scores to each species based on these categories. We found how many species were in each IUCN category, (% or proportion of species in 'least concern' compared to all species with IUCN categories). For each region in the global assessment, we averaged the scores of the species that were there in that region together, giving that region's ICO score. (This averaging assumes that all species are of equal importance). So for an example, let's say there are 10 assessed iconic species: 5 are 'least concern', 4 'vulnerable', and 1 'threatened'. The math would be (5lc + 4v + 1t) / 10. Or, to think about this as percentages, it could be 0.5lc + 0.4v + 0.1t.
    Are you using IUCN categories? If so, you can use Butchart's method. You'll see in the Toolbox that they assign the scores such that we actually have to do (1-Butchart_score) but the logic of what we did is the same.--->
