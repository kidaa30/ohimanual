### Habitat-based Goals
#### Practical Considerations

> Habitat-based goals can be approached together in the data gathering process. Habitats appear in such goals as **Carbon Storage**, **Coastal Protection**, and **Biodiversity**. Your approach will largely depend on the type of data you have.

#### *Ideal Approach*

Ideally, information on the extent and condition of every single habitat type would be available. The reference point for habitat-based goals will likely be temporal. This means that historic data are needed such that current habitat and value data can be compared to historic data. This could also be achieved by using or a proportion of historic data.

#### Ready to start on **Habitat-based Goals**?

The first thing to consider with habitats is **what habitats are in your area**. You should consider what habitats are in your coastal regions as well as your offshore regions throughought your EEZ. Are there mangroves, coral reefs, seagrass beds, salt marshes, sea ice, or subtidal soft-bottom habitats? Are there kelp forests in your waters?

Once you determine what habitats are in your area, you should also consider **their range extent within your reporting regions**. You should consider whether and how far they go offshore and inland. You will likely use a combination of clipped spatial data and spatial data for whole regions, depending on the goal being assessed. For instance, the **Habitat** sub-goal of **Biodiversity** uses the entire region for habitats such as coral reefs in the calculation, but the **Coastal Protection** only uses the extent to 1 kilometer offshore and inland to 1 kilometer <!---Check---> This will affect the preparation of the spatial data layers later in you assessment.

> For instance, do mangroves occur in river deltas in your area, and if so, how far upriver do they go? In the 2013 Global Assessment, for example, mangrove was assessed from 1 kilometer offshore to 1 kilometer inland, but this distance is variable and could change for you OHI+ assessments. It depends on your geography.

Several factors for habitats will have to be considered. In score calculations, habitats are weighted in different ways based on the amount of protection they provide and the amount carbon they sequester, and they are also derived from estimations of habitat health and condition (See **Carbon Storage**, **Coastal Protection**, and **Biodiversity**). The weights of the habitats relative to each other comes from the literature. If you have access to regional-specific studies, you should use try to use that information. Otherwise, the Global data layers can be used as a secondary option.

When thinking about condition, for instance, coral health is based on the percentage of "living cover" on a reef relative to the potential range of the reef.

> In the Global Assessment, coral reference points used the mean predicted values for a country from 1985-1987. When this data was not available for a country, we used the value of neighboring countries. There was also some analyses to control for the fact that the % live coral cover naturally varies over time, hence the use of "predicted values".

> In the 2012 Global Assessment, soft-bottom habitat had an estimated status based on the "intensity of trawl fishing" as a proxy (pages 51 and 52 of SOM 2012).

It is also important to think about the temporal aspect of your habitats. This will affect the **trend** and the choice of the **reference point**. Trend is the change in health or condition over time. However, this might be constrained by data availability due to the heterogeneity of habitat types and data sources. Ideally, there will be enough years of data to directly calculate the recent change in health of the habitat by using a linear model to calculate trend. This isn't always the case, and proxies or estimates might need to be used. For example, due to spotty salt marsh data we created trend categories of increasing (0.5), stable (0), and decreasing (-0.5) based on available data.

> For example, for sea ice in the Global Assessment, a linear model was set to a metric of sea ice cover for data from 2006-2011, after some smoothing to account for natural variation.

Overall, the historical **reference point** is particularly important for the habitat goals. What's the ideal reference point, however? You could consider setting the reference point further back in history if you have the data for it. This would assume there was a more pristine condition in the past, and would be based on the assumption that habitat destruction has been and still is occurring. Here it is useful to use the S.M.A.R.T. principles (See **Conceptual Guide**). It is highly encouraged to set an ambitious reference point, and deviate from those which were set in the Global.

****

### Ready to start the **Carbon Storage** goal?

#### Ideal Approach

Ideally,  information would be available to allow you to to assess the amount of carbon stored in every coastal habitat in your area. The best information would show area covered and some measure of the quality of the habitat for this goal. For example, a dense mangrove forest would be better quality than a sparse mangrove forest. Additionally, different weights would be assigned to the habitats based on their relative ability to store carbon, and this factor could be used to penalize areas where there is greater loss of carbon and reward areas where this is a greater storage of carbon. The carbon storage model could then incorporate such weights in a similar way to the **Coastal Protection** goal. The reference point for habitat-based goals will likely be temporal in most cases. This means that historic data are needed so that current habitat values can be compared to a past state.

>TIP: Understanding habitat carbon storage rates is an area of ongoing research. The capacity for habitats to store carbon varies, and depends on the morphology of plants in the system.

#### Practical Approach

The model and approach for **Carbon Storage** developed for the Global assessment will likely be appropriate for independent assessments. Knowing the area and the condition of of carbon-storing habitats are the two components that are most important. It is important to spend time looking for a way to quantify condition, but it may not be possible to find.

One of the first decisions for your team to make is **whether to use the given data** in the Global Assessments or **to find and use a better dataset**. Even though your goal model shouldn't change entirely from the Global, you should find more localized data than the global data, because the global data layers have already been processed and include clipped regions that reduce the specificity of the information for your area. This is because in the default WebApp methods, the habitat area was calculated by using the global areal coverage of the habitat weighted by the size of the offshore area of the region. This is not consistent currently in the WebApps; for example, if you look at [the given layers a WebApp](https://github.com/OHI-Science/col/blob/draft/subcountry2014/layers/hab_extent_gl2014.csv), you will see that the same values are applied to all regions. You should think here, however, of how your regions' size compare to any spatial dataset's scale, and return to the question of spatial coverage once you are thinking about the **reference points** farther on.

> Questions to consider: Do you have maps, for example, that show current habitat distributions and maps that show historical habitat distributions?  If so, you could extract that data for each of your regions to get a current and reference area. You could also use summarized habitat data that exists in tables or are already compiled in another source.

The types of habitat data you search for also matter. It is recommended to search for mangroves, saltmarshes, and sea grasses because these are viewed as carbon-sequestering habitats that are both ecologically threatened and sensitive to policy responses.  You should remember that we recommend using habitats that can store carbon on the order of 100 years, thereby limiting the types of habitat types you will need. This would also affect other kinds of indicator considerations not discussed in the Global Assessments, such as chlorophyll abundance.

> TIP:, if you look at your default data on the WebApp, you will see **Carbon Storage** information presented for **mangroves**, **salt marshes**, and **sea grass** even if there are no mangroves in your area. You will not be scored on these if they are not in your area.

The second group of items to consider are the **condition** and **carbon contribution**. **Condition** is more essential than **contribution** in this case because it is a more direct measure of ecosystem health and would give a more accurate score for this goal. **Condition** means . It can be measured by a number of ways, often indirectly through studies on density of the habitats, disease affecting the particular habitats, or other impacts such as change in species composition or growth rates from impacts such as overgrazing. Has there been a study assessing habitat integrity or health specifically in your area? **Contribution** is how much each habitat stores relatively to the others--such as the rates of carbon uptake as measured by empirical data. For this you would have to go to the literature and find ratios of organic nutrient uptake between habitats, and you would have to make sure these studies are done correctly to represent your area. For example, were the studies done with a young mangrove forest, or an older one, which might have different growth rates?

<!---let's look into this more; I feel like this may not have been worded well and it might be misleading. OM: My question is whether Global 2012 used total extent 1km offshore, while 2013 used only 1km_offshore+1km_inland?--->
> In the 2012 Global Assessment, the condition of mangroves was assessed as, "Current square kilometers of mangrove coverage divided by the reference hectares, calculated from 1980 to 2005. Seagrass condition was calculated as, "Current percent cover, or hectares, of habitat divided by the reference percentage cover, or hectares from 1975 to 2010."  <!---See Table S7, Supplementary Information, Halpern et al. 2012, p. 24. Note that interestingly it does say salt marsh "condition" was calculated by an increasing or stable trend (value = 1), or by a decreasing trend (value = 0.5). Excluded it because it seems like an estimation.--->

A vital consideration for this goal is **the reference point**. It is an important decision to be made based on good science given the limitations of available data. The reference point is the extent of the habitat at some time in the past, in other words the ideal condition. You will need historical data for this--either from satellites, published papers, or even hand-drawn maps. For questions of sustainability, you must consider, what is a good year to set as your historical past extent? The reference year should be identified based on SMART principles, particularly that it is an ambitious goal, but also realistic. If you do not have trend data, you will have to use a proxy for the trend.

> In the U.S. West Coast assessment (2014), researchers went to the local public library to find hand-drawn maps of historical salt marsh extents in California.

In this case, perhaps your choice of historical reference point may be guided by a policy target as well. For example, are there any climate change policies in your area, with defined targets and objectives? Are there any restoration or carbon storage projects in your area? Do any organizations offer guidance on the amount of carbon storage your management policies should be aiming for?

***

#### Ready to start on **Coastal Protection**?

> **Coastal Protection** aims to assess the amount of protection provided by marine and coastal habitats against flooding and erosion to coastal areas that people value.

#### *Ideal Approach*

Ideally, data for all habitats within a region would be available, as well as information on the value of the land and the vulnerability of inhabitants being protected by these habitats. This requires data for habitat type at high spatial resolution  as well as a measure of the value of what is protected by the habitats. The reference point for habitat-based goals will likely be a temporal baseline; this means that historic data are needed such that current habitat and value data can be compared to them.

#### Practical Approach

The areas relevant to this goal include both inhabited places, such as homes and other structures, and uninhabited places such as parks and special places. However, no credit is given for sea-walls, because they are not regarded as sustainable. At local and regional scales data may exist on all these variables at a high enough resolution to map and calculate exactly which habitats are providing how much protection to which coastal areas. You must first decide which data sources to use for your maps. Do you have spatially-explicit satellite data? If so, how far back in time does it go? The data consideration will be a consideration when you set the reference points.

> In the U.S. West Coast assessment (2014), researchers went to the local public library to find hand-drawn maps of historical sand-dunes in California, for example, in order to find information for sand dune extent in the 1850s.

In addition, one might want to know the level of vulnerability of the different coastal communities. Vulnerability can be quantified as the ability to evacuate, fragility of constructions, economic ability to reconstruct in case of damage. The the reason this is done is to prioritize the protection of certain locations. Physical properties may be available in regional studies, allowing for more a detailed understanding of the protective ability, and likelihood of exposure for each habitat type in different portions of the coastline.

As with the other habitat-based goals, you will need to make careful decisions about your reference point. It's an important decision to be made based on good science given the limitations of available data. The reference point is the extent of the habitat at some time in the past, in other words the ideal condition. You will need historical data for this--either from satellites, published papers, or even hand-drawn maps. For questions of sustainability, you must consider, what is a good year to set as your historical past extent? Do you want to be ambitious and set it far in the past, so it gets closer to a more "pristine" condition? Or do you want to make it represent human use? Will it make your scores look better or worse if you choose a more recent or more distant example?

***

#### Linking Habitat and Biodiversity

It is important to think about how habitat relate to the **Biodiversity** goal. The current approach tracks **Species** and **Habitats** separately because of imperfect data for **Species**. In other words, habitatas are an estimation of the health of the species in an area. Therefore if you have comprehensive species assessments in your area you wouldn’t need the **Habitat** sub-goal. However, the inventory of marine biodiversity may not often be sufficiently complete in your area.

You should also think about the linkages between the habitat-based goals, such as **Carbon Storage** and **Coastal Protection**, and the pressures and resilience. Does the encroachment or reduction of these habitats have an effect on carbon sequestration, or does it change ecosystem composition sufficiently to impact species? Could habitats have an effect on **Clean Waters**, or are they impacted more by local pollution than other impacts? If habitats change for natural reasons, you might not need to worry about their pressures on other goals, but if they consist of introduced species, you should think about the effects on other goals.

> For example, the invasive marsh plants such as *Spartina* may afford some Carbon Storage, but it’s a non-native habitat to an area such as the San Francisco Bay. It could still count towards the **Carbon Storage** goal, but would also be a pressure on **Biodiversity**.
