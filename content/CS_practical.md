####Practical Considerations

#### Ideal Approach

Ideally,  information would be available to allow you to to assess the amount of carbon stored in every coastal habitat in your area. The best information would show area covered and some measure of the quality of the habitat for this goal. For example, a dense mangrove forest would be better quality than a sparse mangrove forest. Additionally, different weights would be assigned to the habitats based on their relative ability to store carbon, and this factor could be used to penalize areas where there is greater loss of carbon and reward areas where this is a greater storage of carbon. The carbon storage model could then incorporate such weights in a similar way to the **Coastal Protection** goal. The reference point for habitat-based goals will likely be temporal in most cases. This means that historic data are needed so that current habitat values can be compared to a past state.

>TIP: Understanding habitat carbon storage rates is an area of ongoing research. The capacity for habitats to store carbon varies, and depends on the morphology of plants in the system.

### Ready to start the **Carbon Storage** goal?

The model and approach for **Carbon Storage** developed for the Global assessment will likely be appropriate for independent assessments. Knowing the area and the condition of of carbon-storing habitats are the two components that are most important. It is important to spend time looking for a way to quantify condition, but it may not be possible to find.

<!---This section below will need to be reworked because the habitat data aren't great and we don't provide them in a way that would be usable for independent groups. To see what I mean, look at the habitat extent for any country, here Colombia: . Note that all habitat coverage is the same across all regions; we didn't even attempt to downweight these. They will need to have better local data.--->
One of the first decisions for your team to make is **whether to use the given data** in the Global Assessments or **to find and use a better dataset**. Even though your goal model shouldn't change entirely from the Global, you should find more localized data than the global data, because the global data layers have already been processed and include clipped regions that reduce the specificity of the information for your area. This is because in the default WebApp methods, the habitat area was calculated by using the global areal coverage of the habitat weighted by the size of the offshore area of the region. This is not consistent currently in the WebApps; for example, if you look at [the given layers a WebApp](https://github.com/OHI-Science/col/blob/draft/subcountry2014/layers/hab_extent_gl2014.csv), you will see that the same values are applied to all regions. You should think here, however, of how your regions' size compare to any spatial dataset's scale, and return to the question of spatial coverage once you are thinking about the **reference points** farther on.

The types of habitat data you search for also matter. It is recommended to search for mangroves, saltmarshes, and sea grasses because these are viewed as carbon-sequestering habitats that are both ecologically threatened and sensitive to policy responses.  You should remember that we recommend using habitats that can store carbon on the order of 100 years, thereby limiting the types of habitat types you will need. This would also affect other kinds of indicator considerations not discussed in the Global Assessments, such as chlorophyll abundance. 

> TIP:, if you look at your default data on the WebApp, you will see **Carbon Storage** information presented for **mangroves**, **salt marshes**, and **sea grass** even if there are no mangroves in your area. You will not be scored on these if they are not in your area.

<!---I switched the order of condition and contribution since condition is more important--->
The second group of items to consider are the **condition** and **carbon contribution**. **Condition** is more essential than **contribution** in this case because <!---probably worth explaining here what condition means, and in the next sentence describing how to measure it. Condition is best if it's not a judgment call--they can look for studies of the 'health' of each habitat. Have there been studies about density, or disease, or grazing responses?--->. **Condition** .... **Contribution** is how much each habitat stores relatively to the others--such as the rates of carbon uptake as measured by empirical data. For this you would have to go to the literature and find ratios of organic nutrient uptake between habitats, and you would have to make sure these studies are done correctly to represent your area. For example, were the studies done with a young mangrove forest, or an older one, which might have different growth rates?

<!---let's look into this more; I feel like this may not have been worded well and it might be misleading. OM: My question is whether Global 2012 used total extent 1km offshore, while 2013 used only 1km_offshore+1km_inland?--->
> In the 2012 Global Assessment, the condition of mangroves was assessed as, "Current square kilometers of mangrove coverage divided by the reference hectares, calculated from 1980 to 2005." [The rate of change on areal extent over the entire time-series was used as the trend.] Seagrass condition was calculated as, "Current percent cover, or hectares, of habitat divided by the reference percentage cover, or hectares from 1975 to 2010."  <!---See Table S7, Supplementary Information, Halpern et al. 2012, p. 24. Note that interestingly it does say salt marsh "condition" was calculated by an increasing or stable trend (value = 1), or by a decreasing trend (value = 0.5). Excluded it because it seems like an estimation.--->

A vital consideration for this goal is **the reference point**. It is an important decision to be made based on good science given the limitations of available data. The reference point is the extent of the habitat at some time in the past, in other words the ideal condition. You will need historical data for this--either from satellites, published papers, or even hand-drawn maps. For questions of sustainability, you must consider, what is a good year to set as your historical past extent? The reference year should be identified based on SMART principles, particularly that it is an ambitious goal, but also realistic.

> In the U.S. West Coast assessment (2014), researchers went to the local public library to find hand-drawn maps of historical salt marsh extents in California.

In this case, perhaps your choice of historical reference point may be guided by a policy target as well. For example, are there any climate change policies in your area, with defined targets and objectives? Are there any restoration or carbon storage projects in your area? Do any organizations offer guidance on the amount of carbon storage your management policies should be aiming for?


**** Notes

Do they have maps, for example, that show current habitat distributions and
maps that show historical habitat distributions?  If so, they could extract
that data for each of their regions to get a current and reference area.
Or, they may have access to summarized habitat data that exists in tables
for their regions (or, at smaller scales such as estuary that they can
summarize per region)?

Antarctica had sea ice habitat data, there is a script that wallks through
downloading and analyzing the data.  But, I'm not sure how helpful that
will be.
