## Developing Goal Models and Setting Reference Points

Once you have determined which goals are assessed and have begun searching for data and indicators, you can start to develop goal models and set reference points. The decision tree of the data discovery process also applies here: first consider how goals can be tailored to your local context before you consider replicating what was done in the Global Assessments. It is always better to use local goal model and reference point approaches where possible.

### Developing multiple goal models at the same time

Goals can be assessed independent of one another. As each goal model is developed and data gathered, it can be assessed without affecting other goals.

 However, you can develop some goal models simultaneously. For example, the habitat-based goals. **Carbon Storage**, **Coastal Protection**, and the **Habitats sub-goal of Biodiversity** all rely on the same underlying data, and their models can be developed together. This will help streamline the data search. A spatial analyst can create the spatial layers used for these goals with the same source material. This will greatly expedite your data layer preparation. If you wish to further coordinate these activities on a higher level, you could have the same team member coordinate activities for the development of certain goals. That is a consideration when assembling your team and planning your workflow. For more details, please see the goal-specific sections.

<!---OMAR: TIP: If you look at `functions.R`, you will see that the reason this one data layer, `Hab_extent`, is used in multiple places in the software, meaning that once you have that data you can use it in several goal models. In the Global Assessment, `Hab_extent` is called upon in **Natural Products**, **Wild-Caught Fisheries**, **Carbon Storage**, and **Coastal Protection**.
![Note that Habitat Extent appears in several goal model functions. ](https://docs.google.com/drawings/d/1HtrwjFi1Lod6B687nNTUPqK-MTAr9uwShooHUIu3Le4/pub?w=790&h=258)--->

### Keeping Reference Points in Mind

The decisions on choosing a reference point will be a theme in each of the goal models you develop. The choice of a reference point will affect how the final scores are calculated, and must be balanced between knowledge of the system, expert judgment, and limitations of the data and to assess the conditions of the various dimensions of ocean health.

Once you find data, always consider how you would set the reference point. Generally there are three types of reference points:
+ _Temporal_: A historical benchmark is used as a the "ideal" point in the past.
+ _Spatial_: A region within the study area with the highest input values could be set as a perfect (score of 100), and all others are scaled to it. It's also possible to set a different reference point for each region of your study area, as was done in the U.S. West Coast study (2014).
+ _Policy-set target_: Such as a sustainable catch yield by a certain year, or the number of people employed in a marine sector by a certain year.

Which type of reference point to use depends on the goal and available data. How many years of data are available? Can you set a temporal reference point with these data, or do you have to find another dataset or other source of information? In any case, you must balance being realistic with being ambitious. We suggest following the S.M.A.R.T. criteria when choosing a reference point: "Specific," "Measurable," "Ambitious," "Realistic," and "Time-bound."

You will learn more, and think more critically about reference points, as you develop the data layers for your assessment.

**_How to use the reference point in a model_**

 It's best to explicitly include the reference point in the model equation whenever possible. For example, Carbon Storage goal model is written like this:
![](http://i.imgur.com/JN58oqB.png)
where C<sub>r</sub> is the reference condition of each habitat. See goal-specific sections for more examples.

### Identifying pressures and resilience

You should note the linkages between your goals and the pressures and resilience that affect them while you are developing your model approach. The team members who are developing specific goals should think about the pressures that act upon those goals as they are data-gathering, and they should think about the data sources that could provide pressures information. However, it may be most useful when one team member gathers all of the data for pressures, since the same pressures affect multiple goals.

<!-- Ning: maybe we can move this detailed information to the pressure/resilience section.  -->
Some pressure data are the same or closely-related to data for goals. For example, when developing the **Wild-Caught Fisheries** goal model requires catch data, which may be the same data source for information on commercial high- and low-bycatch data. Bycatch data are used as pressures layers that affect **Livelhoods and Economies** and **Biodiversity**. In global assessments, the **Clean Waters** goal is very much linked to pressures layers because the input layers for the status are used as pressure layers. Trash pollution is a pressure that affects **Tourism and Reacreation**, **Lasting Special Places**, **Livelihoods and Economies,** and **Species**. It is important to remember these linkages as you go through the data discovery process.

You should also start searching for pressures data independent from data for goals. An example would be how climate change impacts will appear in various places in your assessment. Climate change pressures layers can include UV radiation, sea surface temperature (SST), sea-level rise (SLR), and ocean acidification, and these impacts might affect such goals as **Natural Products**, **Carbon Storage**, **Coastal Protection**, **Sense of Place**, **Livelihoods and Economies**, and **Biodiversity**.

These linkages will become more clear as you go through the OHI+ assessment process.

<!-- Ning: What about Resilience? It's trickier to gather resilience data, but it's good to start thinking about resilience from the beginning.

I saw there is a tempnotes_b_reslilience which has information on resilience. I can edit it and move some information over if you think it's good.

Also there are theoretical questions about resilience, but it is a discussion for another day. Does resilience mean measures to keep things the way it is (eg. grants for AO fishermen to keep fishing), or ways to help people adapt and change (eg. grants for AO fishermen to start aquaculture)?  -->




<!---
#### Goals with Components

JSL text cut from the developing multiple goals section is pasted below. Here we could develop the ideas about when to have a sub-goal like FIS and MAR and when to have components like habitat types in HAB, etc. I can think about how to word this.

Several goals will combine the type of data you find across categories: these include in particular the **Natural Products**, **Livelihoods and Economies**, and habitat-based goals. The existence of the data itself will drive a lot of these decisions, but here are some guidelines to help determine if data are appropriate philosophically for your goal models:

* Do the data represent something truly ocean-based, and natural (i.e. not man-made)?
* How would the reference point be calculated?
* Do data cover the appropriate spatial scales?
* Do data cover the appropriate temporal scales?
--->

#### How to Use This Section

The Ocean Health Index team has a gained knowledge from working with groups conducting independent OHI+ assessments. Your OHI+ assessment will also be valuable for adding to the body of knowledge on how to develop better goal model and score calculations where appropriate. By presenting specific guidance in the following sections, we hope to encourage discussion on the best approaches to conducting your own assessment.

The following sections will guide you through searching for data sources and indicators for the goal models used in the Global Assessments. They will start off with a summary of what the goal is intending to measure with a reminder of the philosophies and  key concepts to keep in mind in order to orient your process.  The descriptions are then followed by questions to consider, and these are then followed by discussion on how to use gathered information in the practical considerations for each goal model approach.

>We provide recommendations for how to approach data discovery and goal model development broadly for goals that have been conducted commonly across OHI+ assessments and the Global Assessment.

You should make sure you have prepared the first steps in starting an OHI+ assessment. The data discovery approaches are based on the philosophical framework of the Ocean Health Index (See the **Conceptual Guide**). If you haven't already read about the goal philosophies in the OHI **Conceptual Guide**, you should read it before actively developing goal models. You should already have an understanding now of the reason for doing an OHI+, and you should have a sense of your local characteristics and priorities that will determine which goals need to be assessed. You may also wish to read about **Assembling a Team** and **Strategy** because this is where you may wish bring your technical teams together for the **Conduct** process. You should also have checked out the WebApp and already be familiar with its capabilities to keep your end-goal in mind.

Below you will find concrete examples from the main OHI studies to-date and you can use them as guides for how to go about your own goal model development. You can change these approaches. You should use the best judgment to capture their philosophies when changing them. Keep in mind that some goal models are intended to remain the same across most assessments, and other goals are recommended to be changed where you have better data or more  information. These descriptions are not proscriptive in all cases, but they are meant to be illustrative. Use them as a menu of options from which to compare the status of your own data and indicators. Also keep in mind that this is a longer process than is presented here; your team should be prepared at this stage to do both the scoping and the thinking on the actual science behind conducting the assessment.

>Throughout this section, you can use the **Examples of the Approach** to identify use-case scenarios that may be useful for your assessment. If you are lacking certain kinds of data, for example, you may be able to find a precedent from the examples in order to inform your own approach. These examples are both instructive and illustrative.
