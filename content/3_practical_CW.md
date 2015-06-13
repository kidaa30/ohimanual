### Discovering Data and Developing Models for Clean Waters and Pollution
#### Where to start on **Clean Waters**?

*Ideal Approach*

> The **Clean Waters** goal captures the degree to which local waters are unpolluted by natural and human-made causes.

Ideally, data would be available and combined from different categories of marine pollution to best capture the factors that can cause waters to become unsuitable for recreation, enjoyment, and other purposes. The type of reference point used will depend on the data available, although a functional relationship would be best for setting limits to uses.

*Practical Guidance*

You should use more refined data than the Global Assessment data, because they rely heavily on proxy data for water quality. However, you should follow the same approach of the geometric mean to sum up the data layers that you find.

First think about what kind of point and non-point sources of pollution are in your area. Are there known sources of trash and marine debris? Is there a population does not have access to sanitation? Does your wastewater get effectively treated before it is discharged into the environment? How does urban runoff contribute to your local coastal waters? You should try to use in-situ measurements of water quality. This could include monitoring data for pathogen levels, chemical contaminants, or even harmful algal blooms. For example, data on the frequency and location of anoxic conditions or eutrophication would be a direct indicator of quality. Indirect indicators are based on the proxies of nutrient input from agriculture or land-based sources. You could also use information on the watershed to calculate inputs into the ocean.

If you don't have such information, or have partial information on one of these inputs, you could combine it with population data or model the data to estimate how much of an impact it has on coastal areas. Do you have population density information over time? You could then use this later to calculate the trend.

>In the 2012 Global Assessment, these data layers are scores spatially for 3 nm out from shore. This is because it concentrates the effect of the inputs to coastal regions and makes them visible to the shoreline. You can change this value in your spatial analysis.

Where possible, you should think about categories of inputs that are not used in the Global Assessments. These include information on toxic algal blooms, oil spills, turbidity or sediment input, and floating trash, and think about how they can fit in to the model areas.

| Input | Related data |
|-----|----------|
| Nutrients | Modeled plumes from land-based nitrogen inputs, fertilizer usage, algal blooms, eutrophication |
| Pathogens | Access to sanitation, population density, wastewater treatment |
| Chemicals | Organic pesticides, inorganic pesticides, toxic chemicals, chemicals from shipping, urban runoff |
| Trash | Floating trash, plastic inputs, uncollected waste |
| Other | Turbidity, altered sedimentation |

*Keep the Model*

In any case, it is recommended that your categories are combined in a geometric mean as in the Global approach. This guarantees that if any one of the components scores poorly, the higher scores from other components will note hide the effect.

*Discovering pressures and resilience data*

The **Clean Waters** goal is connected to the **Pressures** layers. You should approach the both of them at the same time where possible. (See the sections on **Pressures and Resilience** to understand more.)

>In the Global Assessment, marine debris from plastic pollution is one of the pressures layers. The same data are also used in the **Clean Waters** goal, but they are inverted such that a low value of debris is a high score in the goal. This is commonly done for these interchangeable data layers.

## Examples of the Approach

Assessment | Developing the Model  | Setting the Reference Point | Other Considerations
---------------|------------------------------------------------|-----------------------------|-------------------|
**Global 2012** | The status was calculated as the geometric mean of four components, eutrophication (nutrients), chemicals, pathogens and marine debris.  | This goal scores highest when the contamination level is zero. A score of 100 indicates the contamination level is zero. |  The lack of direct measurements meant that modeled and proxy data were used. The status of this goal was also used in the pressures layers.  
**Global 2013** | The model was same as Global 2012, with a few simplifications;  revenue data were adjusted by dividing by GDP per region, reported in 2013 USD. | The reference point was the same as Global 2012. | The approach was the same as Global 2012, with simplifications.
**Brazil (2014)** | The goal model and reference point were the same as Global 2012. Data used to model the components for eutrophication (nutrients) and chemicals was the same as in Global 2012, while pathogens and debris were localized to state level data.  | The reference point approach was the same as Global 2012.  | The study used better, or more local, data than the Global.
**U.S. West Coast (2014)** | The model was the same as Global 2012, with regional instead of global data. | The reference point was set as the number of days when beaches were closed to bathers because pathogen counts were higher than state standards. | The study used more local data than the Global. |
