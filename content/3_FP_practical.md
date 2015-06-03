### Practical Considerations

####Ideal Approach

This goal model measures the amount of seafood sustainably harvested in a given region for primarily human consumption. It should include quantity of fish caught by any practice including wild-caught commercial fisheries, mariculture, artisanal-scale fisheries and recreational fisheries.

#### Recommendations for your assessment:

The overall Food Provision model should not change: it should always measure whether the seafood from fisheries and mariculture (if it is practiced) is harvested at maximum carrying capacity while remaining sustainable. The contribution of each practice to the overall score is weighted by its relative contribution to the total seafood yield.
So far we have only been able to assess commercial fisheries and mariculture with this model. However, if another component were added, for example artisanal fisheries, one might want to consider different options for how to combine it into the indicator. Is a ton of fish harvested through artisanal fisheries equivalent to a ton harvested commercially? Currently, this is the assumption for the Food Provision. But if there is solid rationale to use a different approach, using a different approach to calculating the goal is within the abilities of the OHI.

<!---Note that turtle eggs, shark fins, etc., are Natural Products rather than food provision. Say that you will have to divide appropriately these two categories across these two goals. Can connect to 'sprat' discussion in FAQ.--->


****

Wild-Caught Fisheries

### **WILD-CAUGHT FISHERIES**
#### Practical Considerations

#### Ideal Approach

Ideally, data for catch and effort of every commercially- and recreationally-fished species would be available, as well as the functional relationship between fish population size (biomass) and fisheries effort, so that maximum sustainable yield (MSY) could be calculated. Then, fisheries catch and effort information would be used to calculate the present state and MSY would be used to set the reference point. Current status would be calculated using the present state of every individual species and combining each species together, as the weighted proportion of the total catch.

#### Recommendations for regional assessments

Use catch-per-unit effort data if available, and a functional relationship for the reference point. Fisheries modeling using data poor sources was greatly improved in Global 2013 than the original approach in Global 2012. If regional assessments rely solely on catch data, it is highly recommended to use Global 2013 and not Global 2012.

#### Important Considerations

When collecting data on fish landings, it's important to consider how you will divide the data among regions. This was important in the case of a country using fisheries landings data reported at regional ports.  While it was known whether the fish were caught in inner or outer waters, it was also known that the fish reported at those ports were not necessarily caught in those matching particular regions. Boats, after all, go beyond our predefined OHI+ region designations in order to find their catch. So how does one apportion the percentage of catches correctly?

In this case, one option may be to use the information on where the boats are registered. Having the boats assigned to regions might then offer a way to disaggregate the data. So if possible, try to find as much spatial information for this goal as possible.

<!---From OHI China discussion, April 2015--->


<!--- Moved below from `example_modifications.md`--->


### Example: FAO data

NOTE: if a species that is caught in different sub-regions belongs to the same population, you don't want to split the catch among sub-regions, instead, you want to sum catch across all sub-regions, so you can calculate B/Bmsy for the whole population. For the global analysis we grouped all species catch by FAO major fishing area (www.fao.org/fishery/area/search/en), indicated in the column *fao_id*, assuming that all species caught within the same FAO area belonged to the same stock, while we assumed that the same species, if caught in a different fishing area, belonged to a separate stock.  
Use *fao_id* as an identifier that separates different fisheries 'stocks' belonging to the same species.
If you don't have multiple stocks in your study area, set all *fao_id* = 1.  

`fis_meancatch`:


****

Mariculture

### **MARICULTURE**
#### Practical Considerations

#### Recommendations for your assessment

Setting the reference point for mariculture really depends on regional preferences. This can be very hard to do: in best cases you would incorporate the potential range for mariculture based on habitat suitability for each cultured species, distance from the coast as well as which habitat is suitable, and how much local preference wants to allot to mariculture (versus area apportioned to ports, hotels, beaches, tourism, etc). In Global 2012, without information about social limitations for how much coastal area could be allotted to mariculture, we included the entire area of the coastline, thus assuming that mariculture could be developed everywhere. At a regional scale, better data will allow for restrictions based on habitat, conflicting uses, and social preferences.

#### Ideal Approach

Ideally, there would be information on the area available for mariculture - physically and/or based on social expectations and priorities - and the sustainability of the mariculture practices. This would mean that assessments had been made to identify the physical coastal and offshore habitat appropriate for each intended type of mariculture species (example: offshore habitats for finfish and shallower habitats for filter-feeding invertebrates) and the areas that have been identified as socially appropriate, since mariculture competes for space with many other ocean uses, including fishing and tourism activities. This approach would not penalize regions that have less geographic area available for mariculture, though places with fewer sheltered bays or lower primary production could be at a disadvantage. The type of reference point used will depend on the data available.
