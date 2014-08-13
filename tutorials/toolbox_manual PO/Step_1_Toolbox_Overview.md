# The Ocean Health Index Toolbox Manual



## The Ocean Health Index Toolbox 
The Ocean Health Index (OHI) Toolbox was created to facilitate regional assessments of ocean health using the OHI framework. The Toolbox consists of both software Application (App) operated through a web browser and all files required to calculate Index scores, which can be modified in regional assessments. This document contains technical information to aid those using the Toolbox App. It will be updated with further details with increased functionality of the Toolbox App, which is in progress.   

OHI scores by goal are calculated at the scale of the reporting unit, which is called a ‘**region**’ and then combined using a weighted average to produce the score for the overall area assessed, called a ‘**study area**’. For detailed information about the Ocean Health Index framework, please see the OHI Conceptual Guide available at ohi-science.org. There are also further supporting documents to aid understanding and facilitate regional assessments.

## Using the Toolbox
### What is the Ocean Health Index Toolbox?
The Ocean Health Index (OHI) Toolbox was developed for exploration of global OHI scores and to facilitate calculations of regional assessments. The heart of the Toolbox is the Toolbox App, which is displayed through a web browser and runs using the statistical programming language R. The App takes input values and calculates goal and Index scores, and displays both inputs and scores for each region and the entire study area graphically with maps, histograms, and tables.

Files and scripts that run the Toolbox App can be downloaded to the user’s file system, enabling exploration and modified calculations without further Internet access. New data can be incorporated into the file system and goal models can be modified allowing calculation of scores with updated data and different regions. This is possible with the Toolbox App after experienced R users modify any goal models and GIS analysts update region information. 

The OHI Toolbox will promote deeper understanding of this flexible, transparent framework, and highlight opportunities for realizing a healthier ocean. The Toolbox will enable the user to:

* Explore the operations behind the global ocean health index results
* Recalculate the Index globally using alternative data, weights, and models
* Calculate the Index at a regional scale, with customized modifications and local data inputs tailored to be appropriate to the region and scale of choice 
* Visualize results to highlight best opportunities for improving ocean health.

## Getting Started
The Toolbox App is a graphical user interface (GUI) that is displayed in a web browser where the user can use drop-down menus, buttons and sliders to explore and visualize calculations from the Index. This App is operated by programming code in the language R, free software that is available for download from http://cran.r-project.org. 

Using the Toolbox to explore global results only requires becoming familiar with the Toolbox App, whereas there are additional requirements to conduct regional assessments (see below).

### Requirements for exploring the results from the global assessment:

1. Internet Connection
    + Free software must be [downloaded](http://cran.r-project.org/) from the R website (Step_1a)
    + Follow the Toolbox App [Install](http://ohi-science.org/pages/install.html) instructions (Step_2a)

### Requirements for conducting a regional assessment with new data and models:

1. Internet connection
    + Free software must be [downloaded](http://cran.r-project.org/) from the R website (Step_1b)
    + Follow Github [Install](https://github.com/OHI-Science/ohimanual/blob/master/tutorials/accessing_a_repo/accessing_a_repo.md#accessing-github-repositories) instructions (Step_2b)
2. Technical Knowledge
    + Any changes to data layers or goal models will require strong familiarity with the R coding language (See: [Learning R](http://ohi-science.org/pages/learning_r.html)), with the Toolbox App (See: [Step_3]()), and also with the way input files must be organized (See: [Step_4]()) and prepared ‘behind the scenes’ (See: [Step_5]()).