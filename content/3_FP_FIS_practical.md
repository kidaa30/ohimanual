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
