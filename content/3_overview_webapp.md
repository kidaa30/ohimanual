# Overview of the OHI WebApp

>**Section Summary:**

>Your team should keep the WebApp in mind throughout the **Conduct** phase. The information in the WebApp can guide your team as you define spatial regions, discover and gather data and indicators, develop goal models, and set reference points. At the end of the process, the data you feed into the WebApp will be used share your assessment's scores and results.

**OHI+ WebApps** are websites created to facilitate independent assessments. The WebApp is a good starting point when preparing to conduct an assessment. It is also meant to be used in the final steps of the conducting phases for communicating and visualizing results. For this reason, it is good to think about how your work can feed into the WebApp throughout the course of this phase.

The WebApp displays information about the underlying data as well as the results of the final Index scores. The underlying data are raw data known as **data layers** that are used in all of the OHI calculations. These data layers exist for all components of the goal models, including the pressures and resilience. They are the common format used by the software and will be where your team spends time in preparation. By default, the WebApp only displays data layers and score information that has been extracted from the latest Global Assessment. This information has been simplified to a smaller scale geographically. The default display therefore does not provide fine resolution nor does it guarantee accurate data for each nation or territory. You will have to work to improve this default information. These data can be used as inputs into your assessment only in the cases where no better information for a region exists; however, it is always encouraged to improve the given information wherever possible. **Having the best data that are tailored to the local context will ensure that you get the best results for your assessment.**

A default WebApp is available for every coastal nation and territory that was in the Global Assessment. The WebApps are available through http://ohi-science.org by adding a three-letter identifier to the ohi-science URL. For example, Ecuador’s WebApp (ECU) is found at: http://ohi-science.org/ecu

![The WebApp start page. Note that it's possible to translate the page into your language of choice.](https://docs.google.com/drawings/d/11Gojqw0Xz4kUo_uM1Y699EKO3qN_dae0w93ICzXJ2Pg/pub?w=960&h=720)

> *Remember that this information is public by default, and you must choose to sign up for a premium option to make it private.*

The WebApp homepage provides tabs for you to explore your data, regions, and calculated scores. The main pages are **Apps**, **Regions**, **Layers**, **Goals**, and **Scores**. A quick reference on how to navigate the WebApp is available through the **Docs** link at the bottom of the page.

The interactive **App** page allows you to explore input and output variables. The inputs are data layers and the outputs are calculated scores for each part of the Index for each region in the study area. This page is where you should spend your initial exploration. By choosing input data layers you can see the range of values for a given variable and you can also see information about data sources. More detailed information about the default goal models and the calculation methods is found in the other pages on the site.

The information displayed on the website is stored online in a **GitHub repository.** GitHub is an open-source development platform that allows multiple users to collaborate, track changes, and share their work to prepare data files and write code. Some members of your team will use GitHub to track data layer preparation and view the history of changes made in this process. It also a a way for your team to document the decisions made in the course of this conducting phase. Any changes made to files contained within the GitHub repository will be automatically displayed on the WebApp for other team members and collaborators to view. The history of these changes is also stored on this platform as an archive, and it can be used to display changes made over time (See the section on **GitHub** for how to modify files using this platform).

When your team has finalized preparing both the data layers and modifying the goal models, these data and scores will be visualized through the WebApp.

## Using the WebApp to help define regions

The WebApp displays a list of default sub-country regions. These sub-country regions are usually defined as states, provinces, or territories. The regions are extended offshore by default in order to divide the Exclusive Economic Zones (EEZs) of coastal study areas into offshore regions. The offshore regions are an important part of the Index calculations, and so you should think about whether their definitions are appropriate for your area. These sub-country regions have been provided as a starting point mainly because they are consistent with the scale at which policy decisions are made. However, it is possible to change these boundaries to fit your on local characteristics. The boundaries can be defined as administrative or geographical unit as required by your assessment. This is possible because you can customize the inputs to the WebApp's spatial files. You will most likely need a spatial analyst to help do this when beginning to conduct the assessment.

It is important to note that the provided WebApps do not claim to take a stance on disputed territories. The boundaries for all EEZs were identified by MarineRegions.org (http://www.marineregions.org). The largest sub-country regions were identified by the Global Administrative Regions database (http://gadm.org).

## Using the WebApp to discover data, develop goal models, and set reference points

### The App Page

The App page allows you to explore the input data layers and calculated output scores for each region in the study area. The page presents data and scores from the Global Assessment that are applied to each sub-country region in the study area by default. In order to explore data and scores, you can select them on the left to view their attributes and you can also visualize them in a number of ways on this page.

The App page allows you to view displays through the **Data** and **Compare** tabs. The **Data tab** provides summary information on each data layer and metadata descriptions that accompany them. The **Compare tab** is mainly used for comparing output scores when modifications are made to the underlying data or models.

### The App's Data tab

#### Overview of display options

The Data tab displays input data layer or calculated scores for each goal parameter. It presents the information through a *Map*, *Histogram*, or *Table*. These options are available as sub-tabs on the Data tab page. The *Map* sub-tab is the default display option for the Data tab, and all data presented are drawn from the Global Assessments by default. This means they are either directly duplicated across regions, or the raw values are down-scaled using area- or population-weightings. The *Histogram* sub-tab likewise draws from the same data source, but it displays a histogram of observed values with a smoothed line added. The *Table* sub-tab also draws from the same data but offers information in a tabular form.

**Data displayed in the Map sub-tab:**

![The Map subtab. Click on  'Map'  to see a geographic view of your assessment region. Colors indicate scores or values for your input layers or output scores.](https://docs.google.com/drawings/d/1SzyHRaHqNWyr_6fji5RcY-nYtN5x5HSTjSgl4tFty44/pub?w=959&h=405)

The *Map* displays data for every region as defined in the assessment scenario. A  legend is displayed in the lower right-hand corner of the map to explain the meaning of the colors presented. The range of values will change when variables are selected, and the colors will automatically change to create a visual scale of reference.

**Data displayed in the Histogram sub-tab:**

![Click on *Histogram* to see the distribution of your data or scores, after selecting a variable layer on the left. This example shows the Species sub-goal scores for the study regions of Ecuador.](https://docs.google.com/drawings/d/10TGLNEWQpGcUHeLwT06kJUSUcMEa2tb1IwFaauf6Fmk/pub?w=959&h=415)

The *Histogram* shows the distribution of values of the selected variable as the number of observations for each value bin (shown as white bars) and it also automatically creates a smoothed density function (shown as pink shading).

**Data displayed in the Table subtab:**

![Click on 'Table' to see a table of your data or scores, after selecting a variable layer on the left. This example shows the Species sub-goal scores for the study regions of Ecuador.](https://docs.google.com/drawings/d/12CC5Q7YXweoKw39lHkRjBGcoEVsw3bWuuJPVdzxFRAc/pub?w=960&h=419)

The *Table* displays the variable's value for each region in the study area. It provides an identifying code (*rgn_id*), name (*rgn_name*), and value (*value*) for each observation. The variables are also searchable since you can use the textbox at the bottom of the page to filter the results displayed.

#### Overview of variable options

When you choose the variables to be displayed, you will also see summary descriptions for the data layer. These descriptions, statistics, and metadata for the chosen fields are displayed below the drop-down menus on the left side of the page.

![Overview of the Data tab. Choose the variable you would like to explore through the drop-down menus on the left-hand side of the page. Once you select either input data or an output score, you can view a description and summary of values below.](https://docs.google.com/drawings/d/17YGGl8ZGa7vB7MJTLGwCOL6yh2Ap-OZOK9iVsI-ez4M/pub?w=960&h=374)

> TIP: The data layer descriptions that you will produce later in the conducting phase will appear here.

The first selection you should make from the drop-down menus is the variable type. This means you can choose either **Input Layer** or **Output Score**. The **Input Layer** will show the data layer used for a particular target you select. The targets in this case are either goals, pressures, resilience, or spatial information. The **Output Score** will show calculated scores for the alternative target selections you will make. In this case, the targets are Index or goal scores. In either case, you then have the option to further refine your variable search by either going into a specific layer or a specific dimension, respectively, that's used in the overall Index calculations. If you do not make a selection, the **Output Score** is displayed by default.

For example, if you select **Output Score** as the variable type, you will then be able to choose a target goal or sub-goal, and then you will be able to choose the OHI dimension to be displayed. Remember that the dimensions are status, trend, pressures, resilience, future state, and score. In this way you can understand the calculation of the goal scores.

As another example, if you select **Input Layer** as the variable type, you will be able to choose a target such as a goal and a specific data layer associated with that goal. If that input layer has multiple categories of input types, or if it has multiple years of information available, you will be able to select more specific information. If you do not make a selection, the default setting is the first alphabetical category and the most recent year available.

![Overview of the variable options. You can choose to select and view either `input layers` or `output scores`.](./fig/overview_variable_options2.png)

### The App’s Compare tab

The **Compare** tab allows you to compare differences in calculated scores based on changes you have made to the underlying data layers. These changes can be made to the values of the data layers themselves, or they can be changes made by changing the goal models. Any component you change is tracked through the archiving system of **GitHub** (See the section on **GitHub**) and each version of the changes be visualized here. You can take advantage of this ability to compare one saved version of your calculated Index output to another version of your calculated output. This is done to compare the how changes made to your data or indicators for goals, pressures, or resilience would affect the resulting scores.

You can use this in two ways. One way is use this as an experimentation to guide the process of conducting the assessment itself. This is because visualizing differences is extremely helpful for error checking and for sharing tests to the data among your technical team. Another way to use the **Compare** tab is to compare different management scenario to how changes in your assumptions would impact score results. These changes could occur in the goal models themselves, such as through changes to targets or reference points, or they could be changes made to the values of pressures and resilience layers, for example. Once you have created the outputs, you can visualize theme on this page.

More context on the use of this function can be found in the section, **Using the Toolbox**.

![You can use the OHI+ WebApp's 'Compare' tab to error check, and check the outcomes of alternate scenarios of your assessment.](https://docs.google.com/drawings/d/1qF9SDqLFxcH2znkpCa6rkhGnD0Az1uC52a1Bwvzqrgo/pub?w=960&h=581)

The App page also offers the ability to view different **branches** or **scenarios** in the upper left-hand corner of the page. This is an option that you will take advantage of later on in the **Conduct** phase, and it is good to think about so you can plan the assessment appropriately. The **branches** refer to unique copies of a GitHub repository where information is stored. Each branch is a copy of a repository that is meant to be modified independently of other branches. This is done to ensure that changes made to one branch will not affect the information in another branch. This allows for active collaboration and offers a way to archive different outputs to Index calculations. For example, the *published* branch shows information that has been vetted for sharing, while the *draft* branch can be used for experimentation. These branches can be merged together at any time, and that is typically done when important milestones in the conducting process are reached. The *subcountry* folders displayed also offer another way to compartmentalize outcomes by allowing you to compare different *scenarios* within the same branch of your repository.

> The App displays a *published* branch by default. It is recommended work on the *draft* branch until your assessment is finalized. When it is finalized, you can then merge the *draft* branch with the *published* branch.  

These options for displaying and comparing information will be useful for understanding the multiple objectives in your OHI+ assessment.
