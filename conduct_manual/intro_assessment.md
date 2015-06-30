---
output: html_document
---
# The Ocean Health Index Assessment Manual

  >**Summary:**

> This guide provides an overview of conducting an OHI+ assessment. An assessment involves incorporating information from your study area into goal models to calculate Ocean Health Index (OHI) scores using the OHI Toolbox software and WebApp. This process is explained in this guide.

## Where you are in the process

> At this stage, you should have **Learned** and **Planned** for your assessment, and are now ready to **Conduct** it.

**Here you will learn how to conduct an independent Ocean Health Index+ (OHI+) assessment.** The OHI+ process consists of four phases. In the first phase, you **learned** about the OHI to understand the philosophy behind the goals and the motivation for conducting a study. In the second phase, you actively **planned** to conduct your OHI+ assessment. Now you will actively **conduct** the assessment by engaging with the work of finding the data, preparing the goal models, and taking the necessary steps to learn how to use the **OHI Toolbox** and related software to produce the final results. This is where the science of data discovery and goal model development comes in. In the final phase, you will **communicate** the findings and results of your assessment with others.

- **Phase 1:** **Learn** about the OHI
- **Phase 2:** **Plan** an OHI+ assessment
- **Phase 3:** **Conduct** the OHI+ assessment
- **Phase 4:** **Communicate** and inform

## Why you are conducting an assessment

> Remember that the process of conducting an OHI+ assessment is as valuable as the final results. Documenting decisions made, as well as the challenges and successes encountered along the way, can lead to better understanding of the system, help inform management decisions, and guide future assessments to track changes through time.

**The OHI framework** allows you to synthesize  the information and priorities relevant to your local context. Because the methods of the framework are repeatable, transparent, quantitative, and goal-driven, the process of a carrying out an OHI+ assessment is as valuable as the final results. The first completed assessment for a study area is valuable because it establishes a baseline and highlights the state of information quality and availability in an area. Any subsequent assessments carried out through time are also valuable because they can be used to track and monitor changes in ocean health. With this in mind, the **Conduct** phase will require careful thought and consideration along the way, and we encourage documentation and scripting to be done within the OHI Toolbox to facilitate the transparency and reproducibility of future assessments.

Each OHI assessment should have a clear purpose. One of the typical reasons for carrying out an independent assessment is to have an impact on policy and management decisions, and for this reason it is very important to have explicitly defined purpose. Additionally, assessments can be more relevant to management when they are conducted at the spatial scales in which policy decisions are made. These spatial scales could include political subdivisions like countries, states, provinces, or they could even include ecological regions such as bays. The **regions** and the overall **study area** are definitions that will be used throughout the assessment. The study area is the entire spatial boundary of your assessment, while the regions are the smaller subdivisions within the study area. In the OHI framework, goal scores are calculated for regions separately and then combined to produce an overall OHI score for each study area. The number of regions varies with each assessment's study area; completed assessments have had between one and 221 regions.


## What to expect when conducting an assessment

> It is important to include information that best represents your study area, and to make science-driven decisions and clearly document what was done and why. Your team should as creative and insightful as you can be while working within the bounds of informational and technical limitations.

There are **key processes and considerations** that will be a part of every assessment. Every assessment should build from the lessons learned of previously completed assessments and identify what local characteristics need to be included in a study. This is done partly by comparing the local situation to the example situations in the literature; it is also done by comparing the default information provided in the WebApp to what is known about local realities. After you have outlined and identified local characteristics and priorities, you should prepare to use the Toolbox software and fit the data you have found to be formatted correctly for that software. Finally, once working with the information within the Toolbox, your team will constantly udpate and improve the methods of the assessment before being able to calculate the final results. The last thing you will do is visualize the outputs once more in the WebApp's maps and flower plots that can be shared with other partners and collaborators. Above all, you should be prepared to **know that this process takes time and is an iterative approach**.

The time required to conduct an assessment is not set in stone. On average, assessments have taken between one and a half and three years, but that will vary depending on the a number of factors such as the size and composition of your team and  the challenges encountered in discovering and gathering information. The scale of data processing and goal model modifications needed before you will be able to actively use the information available also affects the amount of time it takes to conduct the assessment. The skill sets of the team members and the amount of technical resources available if another factor. You should think about which team members are needed at what stage of the process, including an R programmer, a spatial analyst, and those who will be familiar with GitHub.

#### Understanding completed OHI assessments

It is important to **understand completed OHI assessments** before you can begin tailoring the approach to your needs. By looking at specific uses of the OHI, you can identify how information was found and how it is presented in the results. You can also get a sense of what kinds of research questions are useful to ask. In many cases, studying completed OHI assessments will inform your approaches for discovering data and developing goal models later on in the process, and it is good to keep the literature readily available since you will likely be returning to it throughout this process.

The OHI framework was developed through collaboration and iteration. Your assessment can leverage the collective knowledge and insight used in the methods of the Global Assessment by Halpern *et al*. in *Nature* (2012) as well as the subsequent assessments conducted annually (in 2013, 2014, and ongoing). Each annual Global Assessment has improved upon some of the goal models based on better data availability or a better understanding of the systems involved. Several smaller-scale assessments have been completed that are highly informative as well, and particularly for regional scale assessments. The following studies been published with supplemental online materials, and are available at http://ohi-science.org:

* **Global**
  - Halpern et al. (2012) An index to assess the health and benefits of the global ocean. *Nature*.
  - Halpern et al. (2015) Patterns and emerging trends in global ocean health. *PLoS ONE*.
* **Brazil**
  - Elfes et al. (2014) A regional-scale Ocean Health Index for Brazil. *PLoS ONE*.
* **United States West Coast**
  - Halpern et al. (2014) Assessing the health of the U.S. West Coast with a regional-scale application of the Ocean Health Index. *PLoS ONE*.
* **Fiji**
  - Selig et al. (2015) Measuring indicators of ocean health for an island nation: The Ocean Health Index for Fiji. *Ecosystem Services*

Additionally, several OHI+ assessments have been done. As information is available about those assessments they will be posted on http://ohi-science.org.

> TIP: The OHI+ development team is prepared to provide guidance for assessments. Please be familiar with past approaches and documentation when requesting guidance.

#### Identifying local characteristics and priorities

The initial actions of an assessment involve **identifying local characteristics and priorities**. This means considering all of the elements unique to your local context. What are the key issues that should be included for your assessment to be credible, useful, and meaningful at the same time? What are the types of coastal habitats in your area that should be included in order to more accurately represent your ecology? How do people typically relate to the ocean in your area in terms of social and cultural patterns? These are the kinds of questions you should consider prior to discovering the data and gathering the indicators that will be needed to fulfill the goal models.

It is important to identify the social and ecological characteristics and priorities that are the most relevant for your study area, even though data that directly measure those characteristics may not be available. But these characteristics may be able to be captured with indirect measures, called proxies. Therefore, knowing which characteristics you want to represent before you start your assessment may remove some of the bias that could occur if the assessment was only based on known available information.

#### Determining goals to be assessed

Once you have identified local characteristics important to your study area, consider whether all goals included in the Global Assessment are applicable to your assessment. Should new goals or sub-goals be added? Should a goal that is not relevant to your study area be removed completely? Should a goal or sub-goal be given more or less weighting compared to other goals or sub-goals in the final Index score? These decisions should happen while beginning your assessment and before you become more constrained with what kinds of information are available. At the point where you have determined the goals to be assessed, you will likely modify existing goal models or develop a new ones based on the accessible information. Sometimes encountering difficulties with data availability will lead you to different data sources and indirect measures and will require the models to be redeveloped.

#### Discovering data and developing goal models

The actual approach to conducting your assessment will depend on data availability and it will likely require an iterative process to incorporate the best available information into a model that captures the philosophy of the goals. It will also require creative thinking and problem-solving abilities among your team. There are many decisions to be made when gathering data. This is because your data will come from disparate sources, and you will have to engage experts to help identifying good proxies and indicators, deciding reference points, and developing goal models. OHI+ assessments should incorporate higher-resolution information where possible, and always be guided by local priorities preferences to develop tailored goal models and reference points that produce scores that best reflect local realities. Similarly, pressures and resilience measures can be refined using local data and indicators. There are many data inputs that can be included in the OHI framework. The process of discovering and gathering so many different kinds of data and indicators is an important step that you will return to as you continue to conduct the assessment. This is where having a collaborative team that can work across disciplines will be key.

How goal models are developed and reference points set should also be considered when discovering data. Discovering data and developing goal models is an iterative process because how goals are modeled will depend on the data available, and you may return to the data discovery phase to see if other options are available to produce the best possible model. Documenting these decisions is important for the communication of the methods in the ultimate sharing of the results.

#### Using the Toolbox software

<!---
JSL: I've done some restructuring but haven't developed fully. OM: started a bit, but could be taken further.
--->

The **OHI Toolbox** is the main software used for organizing and processing information, documenting decisions made, calculating scores, and visualizing results. It was created to facilitate score calculations as well as the organization of information and transparency of the approach. The Toolbox is built with open-source software, meaning that it is freely available for you to use able to be modified to meet your needs. You will access the software from online and will use several free software tools to conduct your assessment in a collaborative, transparent, and reproducible manner.

Accompanying the OHI Toolbox is the **OHI+ WebApp**, which is a visualization tool that displays input information and calculated scores in several ways. Most coastal countries have a WebApp that was created to facilitate planning and communication during your assessment. The WebApp visually presents inputs, goal models and calculated scores for each defined region through interactive maps, histograms, and tables. All inputs presented in a country's WebApps were extracted for each country from the global analysis, and scores were calculated using Global Goal models.

The Toolbox software should be used when your team is ready to apply to your prepared informational inputs. The steps of carefully preparing and gathering data layers, indicators, and developing goal models can be done independently of the actual software use; however, learning how to use the software when you are ready to organize your files and information can be very useful. Not all members of your team will need to use all of the different platforms, and different members may have expertise in one or more of the tools.

The WebApp is a widely useful communication tool and that is why it is presented first in this guide. Not all team collaborators may be involved with Toolbox calculations or goal model development, but they will all certainly want to see the final results. The WebApp will help you convey the findings and it will orient the component parts that go into building the Index.

#### Outcomes of conducting an assessment

**The process of conducting an OHI assessment is as valuable as the final results.** This is because while conducting an OHI assessment you will bring together all of the meaningful information for ocean health together to the same place. In doing so, you will have a census of existing information and will also identify knowledge and data gaps that alone is a benefit of conducting an assessment. With your team and advisors, you could also create an ocean alliance that combines both knowledge and cultural values across disciplines. Conducting an OHI+ assessment can engage many different groups, including research institutions, government agencies, policy groups, non-governmental organizations, and both the civil and private sectors.  
Your completed assessment will produce OHI scores for each goal for every region in your study area, and scores within the assessment can be compared with each other. These scores will not be quantitatively comparable to those of other OHI assessments because they differ in the underlying inputs, goal models, and reference points. The only *quantitative* comparisons can be made within an assessment, whether between regions or through time. However, *qualitative* comparisons between different OHI assessments can be  made because the scores are an indication of how far a region is to achieving its own targets. For instance, a score of seventy in one study area should mean that that country is seventy percent of the way to achieving its perceived ideal state of ocean health, but what that ideal state is will differ between study areas..

Scores can be visualized using the WebApp with interactive maps and flower plots, which helps interpret calculated scores and communicate results. Subsequent assessments will use the same methods and reference points, but incorporating updated data. Repeated assessments enable you to compare and track how scores have changed over time, with the aim of ultimately informing policy to improve ocean health.

## How to use the OHI Manual to start your assessment

Conducting an assessment requires both an understanding of how past assessments have been completed and the innovation to capture important characteristics of your study area using the information available. You can start by understanding the structure of completed assessments at global and smaller scales and the models that were created with the information available. Understanding the approaches in different contexts will help you think about what should be done similarly and differently in your local context. Identifying local characteristics and priorities in your study area will help you determine the relevant goals to be assessed.

Navigating through the WebApp can help frame your thinking and introduce you to the structure of inputs that will be required for the Toolbox software.

This Manual will guide you through the process with the following information:

1. Using the OHI+ WebApp to define regions and develop the approach
2. Defining spatial regions, discovering data, and developing goal models
 * Defining spatial regions within the assessment area
 * Discovering and gathering data and indicators for goal models, pressures, resilience
 * Developing goal models and setting reference points for goals, pressures, resilience
3. Learning how to install and use the OHI Toolbox and supporting software
 * Understanding the file system for the Toolbox and assessment repositories
 * Formatting data for the Toolbox
 * Installing the Toolbox and supporting software
 * Learning how to use the Toolbox by modifying data layers and goal models
 * Refining goal models and data inputs within the Toolbox
4. Guidance for frequently asked questions and troubleshooting
