## Developing Goal Models and Setting Reference Points

Once you have determined which goals are assessed and have begun searching for data and indicators, you can start to develop goal models and set reference points. The decision tree of the data discovery process also applies here: first consider how goals can be tailored to your local context before you consider replicating what was done in the Global Assessments. It is always better to use local goal model and reference point approaches where possible.

### Developing goal models at the same time

Several goals will combine the type of data you find across categories: these include in particular the **Natural Products**, **Livelihoods and Economies**, and habitat-based goals. The existence of the data itself will drive a lot of these decisions, but here are some guidelines to help determine if data are appropriate philosophically for your goal models:

* Do the data represent something truly ocean-based, and natural (i.e. not man-made)?
* How would the reference point be calculated?
* Do data cover the appropriate spatial scales?
* Do data cover the appropriate temporal scales?

You can develop some goal models simultaneously. For example, you should do the habitat-based goals together. These include **Carbon Storage**, **Coastal Protection**, and **Biodiversity, Habitats** in the Global Assessment. This will be efficient and help streamline the data search. A spatial analyst can do the file manipulation to create the spatial layers that get used for these goals using the same source material. This will greatly expedite your data layer preparation. If you wish to further coordinate these activities on a higher level, you could have the same team member coordinate activities for the development of certain goals. That is a consideration when assembling your team and planning your workflow.

<!---TIP: If you look at `functions.R`, you will see that the reason this one data layer, `Hab_extent`, is used in multiple places in the software, meaning that once you have that data you can use it in several goal models. In the Global Assessment, `Hab_extent` is called upon in **Natural Products**, **Wild-Caught Fisheries**, **Carbon Storage**, and **Coastal Protection**.
![Note that Habitat Extent appears in several goal model functions. ](https://docs.google.com/drawings/d/1HtrwjFi1Lod6B687nNTUPqK-MTAr9uwShooHUIu3Le4/pub?w=790&h=258)--->

### Developing linkages between goals and pressures

You should note the connections between your goals and the pressures and resilience that affect them while you are developing your model approach.

For instance, you could do the fisheries goals while preparing some of the pressures layers that will be used elsewhere in the assessment. The **Wild-Caught Fisheries** model uses functional relationships that rely on catch data, which may lead to information on commercial high- and low-bycatch data. These are pressures layers that affect other goals such as **Livelhoods and Economies** and **Biodiversity**. It will be good to think about those connections as you go through the data discovery process.

You may also start with the pressures data rather than the goals. An example would be how climate change impacts will appear in various places in your assessment. Climate change pressures layers can include UV radiation, Sea Surface Temperature (SST), sea-level rise (SLR), and ocean acidification, and these impacts might affect such goals as **Natural Products**, **Carbon Storage**, **Coastal Protection**, **Sense of Place**, **Livelihoods and Economies**, and **Biodiversity**. In the case of Global 2012, the **Clean Waters** goal is very much linked to pressures layers because the same data layers for pressures are used as the input layers for the status. Trash pollution is a pressure that affects **Tourism and Reacreation**, **Lasting Special Places**, **Livelihoods and Economies,** and **Species**.

These connections will become more clear as you go through the OHI+ assessment process.

### Keeping Reference Points in Mind

The decisions on choosing a reference point will be a theme in each of the goal models you develop. The choice of a reference point will affect how the final scores are calculated, and will have to be balanced between limitations of the data and expert judgment to assess the conditions of the various dimensions of ocean health.

Once you find data, always consider how far back in time it goes. Can you set a reference point with this data, or do you have to find another dataset or other source of information to find a historical reference point? In addition to set values, such as maximum or minimum observed value, it's possible to use spatial reference points and temporal reference points. In spatial reference points, you find the highest-scoring region and say that it is perfect. It's also possible to set a different reference point for each region of your study area, as was done in the U.S. West Coast study (2014). Using temporal reference points, a historical benchmark is used as a the "ideal" point in the past. A third type of reference point is a policy-set target, such as a sustainable catch yield by a certain year, or the number of people employed in a marine sector by a certain year. In any case, you must balance being realistic with being ambitious. We suggest following the S.M.A.R.T. criteria when choosing a reference point. S.M.A.R.T. criteria means they should be "Specific," "Measurable," "Ambitious," "Realistic," and "Time-bound."

You will learn more, and think more critically about reference points, as you develop the data layers for your assessment.

#### How to Use This Section

The Ocean Health Index team has a gained knowledge from applying the Index independent assessments. Your OHI+ assessment will also be valuable for adding to the body of knowledge on how to develop better goal model and score calculations where appropriate. By presenting specific guidance in the following sections, we hope to encourage discussion on the best approaches to conducting your own assessment.

The following sections will guide you through searching for data sources and indicators for the goal models used in the Global Assessments. They will start off with a summary of what the goal is intending to measure with a reminder of the philosophies and  key concepts to keep in mind in order to orient your process.  The descriptions are then followed by questions to consider, and these are then followed by discussion on how to use gathered information in the practical considerations for each goal model approach.

>We provide recommendations for how to approach data discovery and goal model development broadly for goals that have been conducted commonly across OHI+ assessments and the Global Assessment.

You should make sure you have prepared the first steps in starting an OHI+ assessment. The data discovery approaches are based on the philosophical framework of the Ocean Health Index (See the **Conceptual Guide**). If you haven't already read about the goal philosophies in the OHI **Conceptual Guide**, you should read it before actively developing goal models. You should already have an understanding now of the reason for doing an OHI+, and you should have a sense of your local characteristics and priorities that will determine which goals need to be assessed. You may also wish to read about **Assembling a Team** and **Strategy** because this is where you may wish bring your technical teams together for the **Conduct** process. You should also have checked out the WebApp and already be familiar with its capabilities to keep your end-goal in mind.

Below you will concrete examples from the main OHI studies to-date and you can use them as guides for how to go about your own goal model development. You can change these approaches. You should use the best judgment to capture their philosophies when changing them. Keep in mind that some goal models are intended to remain the same across most assessments, and other goals are recommended to be changed where you have better data or more  information. These descriptions are not proscriptive in all cases, but they are meant to be illustrative. Use them as a menu of options fro from which to compare the status of your own data and indicators. Also keep in mind that this is a longer process than is presented here; your team should be prepared at this stage to do both the scoping and the thinking on the actual science behind conducting the assessment.

>Throughout this section, you can use the **Examples of the Approach** to identify use-case scenarios that may be useful for your assessment. If you are lacking certain kinds of data, for example, you may be able to find a precedent from the examples in order to inform your own approach. These examples are both instructive and illustrative.
