# Overview of the OHI WebApp

>**Section Summary:**

>Your team should be familiar with the structure of the WebApp since it demonstrates how information is organized and displayed. As you update inputs with local information, you can view these updates with the WebApp.

**OHI+ WebApps** are websites created to facilitate independent assessments. The WebApp is a good starting point when conducting an assessment because you can easily navigate how information is organized and displayed. The WebApp is also meant to be used to visualize and communicate results.

The WebApp displays input information (data and indicators) as well as final OHI scores. When prepared and formatted for the OHI, inputs are called **layers** and are used in all OHI calculations, including goal models,  pressures and resilience. By default, the WebApp only displays layers and score information that have been extracted from the latest global assessment and allocated to subcountry regions with the study area. The default display therefore does not provide fine resolution nor does it guarantee accurate data for each study area. You will substitute these layers with higher-quality information at the local scale in your assessment. However, the default layers can be used as inputs into your assessment in cases where no better information exists. **Incorporating the best information possible will generate results that best represent your study area.**

The WebApp is powered by the **OHI Toolbox**, which organizes all of the layers and calculates Index scores. The Toolbox is where you will actively work to prepare and format layers and develop goal models, which can then be displayed with the WebApp.

A default WebApp is available for most coastal nations. For example, Ecuador’s WebApp (ECU) is found at http://ohi-science.org/ecu. Note that it is possible to translate the page into your language of choice.

![The WebApp start page. Note that it is possible to translate the page into your language of choice.](https://docs.google.com/drawings/d/11Gojqw0Xz4kUo_uM1Y699EKO3qN_dae0w93ICzXJ2Pg/pub?w=960&h=720)

> *Remember that this information is publicly available when stored on free GitHub accounts. If you would like your assessment to be private, you can choose a premium option.*

The WebApp homepage provides tabs for you to explore your data, regions, and calculated scores. The main pages are **App**, **Regions**, **Layers**, **Goals**, and **Scores**, which were described in the **Conceptual Guide**. The App page is described more below.

The interactive **App** page allows you to explore input and output variables. The inputs are the layers and the outputs are calculated scores for each goal and dimension of the Index for each region in the study area. This page is where you should start your exploration. By choosing input layers you can see the range of values for a given variable and you can also see information about data sources. More detailed information about the default goal models and the calculation methods is found in the other pages of the WebApp.

The information displayed on the website is stored online in a **GitHub repository.** GitHub is an open-source development platform that allows multiple users to collaborate, track changes, and share their work to prepare data files and write code. Some members of your team will use GitHub to track layer preparation and view the history of changes made in this process. It also a a way for your team to document the decisions made during your assessment. Any changes made to files contained within the GitHub repository will be automatically displayed on the WebApp for other team members and collaborators to view. The history of these changes is also stored on this platform as an archive, and it can be used to display changes made over time (See the section on **GitHub** for how to modify files using this platform).

## Defining and displaying regions

WebApps display subcountry regions within each study area. The boundaries for these subcountry regions are usually states, provinces, or districts reported to Global Administrative Areas (GADM: www.gadm.org). These land-based regions are extended offshore to divide the Exclusive Economic Zones (EEZs) into offshore regions of the study area. Offshore regions are important for Index calculations, in part because scores for each region are combined using the offshore area to weight the average of the final Index score. You can redefine these regional boundaries; these subcountry regions have been provided as a starting point. To redefine the boundaries you will need a spatial analyst; details are below.

It is important to note that the provided WebApps do not claim to take a stance on disputed territories. The boundaries for all EEZs were identified by MarineRegions.org (http://www.marineregions.org), and  subcountry regions were identified by the Global Administrative Regions database (http://gadm.org).

## Exploring inputs and outputs with the WebApp's App page

The App page allows you to explore the input layers and calculated output scores for each region in the study area. The page presents data and scores from the global assessment that are applied to each subcountry region in the study area by default. In order to explore data and scores, you can select them on the left to view their attributes and you can also visualize them in a number of ways on this page.

The App page allows you to view displays through the **Data** and **Compare** tabs. The **Data tab** provides summary information on each layer and metadata descriptions that accompany them. The **Compare tab** is mainly used for comparing output scores when modifications are made to the underlying data or models.

### The App's Data tab

#### Overview of display options

The Data tab displays input layer or calculated scores for each goal parameter. It presents the information through a *Map*, *Histogram*, or *Table*. These options are available as sub-tabs on the Data tab page. The *Map* sub-tab is the default display option for the Data tab, and all data presented are drawn from the global assessments by default. This means they are either directly duplicated across regions, or the raw values are down-scaled using offshore area- or population-weightings. The *Histogram* sub-tab likewise draws from the same data source, but it displays a histogram of observed values with a smoothed line added. The *Table* sub-tab also draws from the same data but offers information in a table.

**Data displayed in the Map sub-tab:**

![The Map sub-tab. Click on 'Map'  to see a geographic view of your assessment region. Colors indicate scores or values for your input layers or output scores. This example shows Index scores for each region in Ecuador.](https://docs.google.com/drawings/d/1SzyHRaHqNWyr_6fji5RcY-nYtN5x5HSTjSgl4tFty44/pub?w=959&h=405)

The *Map* displays data for every region. A  legend is displayed in the lower right-hand corner of the map to explain the meaning of the colors presented. The range of values will change when variables are selected, and the colors will automatically change to match that range.

**Data displayed in the Histogram sub-tab:**

![The Histogram sub-tab. Click on 'Histogram' to see the distribution of layers or scores after selecting a variable layer on the left. This example shows the Species sub-goal scores for the study regions of Ecuador.](https://docs.google.com/drawings/d/10TGLNEWQpGcUHeLwT06kJUSUcMEa2tb1IwFaauf6Fmk/pub?w=959&h=415)

The *Histogram* shows the distribution of values of the selected variable as the number of observations for each value bin (shown as white bars) and it also automatically creates a smoothed density function (shown as pink shading).

**Data displayed in the Table sub-tab:**

![The Table sub-tab. Click on 'Table' to see a table of your data or scores, after selecting a variable layer on the left. This example shows the Species sub-goal scores for the regions of Ecuador.](https://docs.google.com/drawings/d/12CC5Q7YXweoKw39lHkRjBGcoEVsw3bWuuJPVdzxFRAc/pub?w=960&h=419)

The *Table* displays the variable's value for each region in the study area. It provides an identifying code (*rgn_id*), name (*rgn_name*), and value (*value*) for each observation. The variables are also searchable since you can use the textbox at the bottom of the page to filter the results displayed.

#### Overview of variable options

When you choose the variables to be displayed, you will also see summary descriptions for the layer. These descriptions, statistics, and metadata for the chosen fields are displayed below the drop-down menus on the left side of the page.

![Overview of the Data tab. Choose the variable you would like to explore through the drop-down menus on the left-hand side of the page. Once you select either input data or an output score, you can view a description and summary of values below.](https://docs.google.com/drawings/d/17YGGl8ZGa7vB7MJTLGwCOL6yh2Ap-OZOK9iVsI-ez4M/pub?w=960&h=374)

> TIP: As you prepare new layers, your updated descriptions will appear here.

The first selection you should make from the drop-down menus is the variable type. This means you can choose either **Input Layer** or **Output Score**. The **Input Layer** will show the layer used for a particular target you select. The targets in this case are either goals, pressures, resilience, or spatial information. The **Output Score** will show calculated scores for the alternative target selections you will make. In this case, the targets are Index or goal scores. In either case, you then have the option to further refine your search by either going into a specific layer or a specific dimension that is used in the overall Index calculations. If you do not make a selection, the **Output Score** is displayed by default.

For example, if you select **Output Score** as the variable type, you will then be able to choose a target goal or sub-goal, and then you will be able to choose the OHI dimension to be displayed. Remember that the dimensions are status, trend, pressures, resilience, future state, and score. In this way you can investigate the components that combine to create the goal scores.

As another example, if you select **Input Layer** as the variable type, you will be able to choose a target such as a goal and a specific layer associated with that goal. If that input layer has multiple categories of input types, or if it has multiple years of information available, you will be able to select more specific information. If you do not make a selection, the default setting is the first alphabetical category and the most recent year available.

![Overview of the variable options. You can choose to select and view either `input layers` or `output scores`.](./fig/overview_variable_options2.png)

### The App’s Compare tab

The **Compare** tab allows you to compare differences in calculated scores based on changes you have made to the underlying layers. These changes can be the values of the layers themselves, or they can be from changing the goal models. Any component you change is tracked through the archiving system of **GitHub** (See the section on **GitHub**) and each version of the changes be visualized here. You can take advantage of this ability to compare one saved version of your calculated Index output to another version of your calculated output. This is done to compare the how changes made to your data or indicators for goals, pressures, or resilience would affect the resulting scores.

You can use this in two ways. One way is use this is to visualize updates as you make them: viewing differences is extremely helpful for error checking and for sharing tests to the data among your technical team. Another way to use the Compare tab is to compare different management scenario to how changes in your assumptions would impact score results. These changes could occur in the goal models themselves, such as through changes to targets or reference points, or they could be changes made to the values of pressures and resilience layers, for example.

![You can use the OHI+ WebApp's 'Compare' tab to error check, and check the outcomes of alternate scenarios of your assessment.](https://docs.google.com/drawings/d/1qF9SDqLFxcH2znkpCa6rkhGnD0Az1uC52a1Bwvzqrgo/pub?w=960&h=581)

The App page also offers the ability to view different **branches** or **scenarios** in the upper left-hand corner of the page. The **branches** refer to unique copies of a GitHub repository where information is stored. Each branch is a copy of a repository that is meant to be modified independently of other branches. This is done to ensure that changes made to one branch will not affect the information in another branch. This allows for active collaboration and offers a way to archive different outputs to Index calculations. For example, the *published* branch shows information that has been vetted for sharing, while the *draft* branch can be used for experimentation. These branches can be merged together at any time, and that is typically done when important milestones in the assessment process are reached. The *subcountry* folders displayed also offer another way to compartmentalize outcomes by allowing you to compare different *scenarios* within the same branch of your repository.

> The App displays a *published* branch by default. It is recommended work on the *draft* branch until your assessment is finalized. When it is finalized, you can then merge the *draft* branch with the *published* branch.  

These options for displaying and comparing information will be useful for understanding the multiple objectives in your OHI+ assessment.
