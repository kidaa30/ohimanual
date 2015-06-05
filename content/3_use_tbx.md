# Using the Toolbox

>**Section Summary:**

>In this section, you will learn about the most common modifications made to repositories. You will be given examples to follow to help with your own assessment. The most common modifications are changing the pressures and resilience matrices, changing or creating data layers, and changing or removing goals models.

> TIP: You should now have your assessment repository opened and be familiar with the files in the folder.

As your team finalizes which data should be included in the assessment and begins developing goal models, you can incorporate this information into your repository. Data layer files can be created and updated with any software that handles *.csv* files, but goal models must be updated in R. With any modifications you sync to the online repository, the Toolbox will automatically recalculate goal scores. Calculations can also be done locally and offline by running  `subcountry2014/calculate_scores.R`.

This section gives instruction and examples for the most common modifications you will make to your repository:

- **modifying pressures and resilience matrices**
- **modifying and creating data layers for status, trend, pressures and resilience**
- **modifying goal models**
- **removing goals**


The files you will modify are:

![Files you will commonly modify are shown in the figure (Mac navigation is shown above and Windows is shown below). These include the `conf` folder, `layers` folder, and `layers.csv`.](https://docs.google.com/drawings/d/10-cx0mlgT9tmy5KN_IKE0TxgojBX6J3U6ahZMMVmNqY/pub?w=964&h=878)

### File Preparation Workflow

It is generally recommended that you construct a useful workflow with your team when updating data layers for the Toolbox. This process is one that can be done by one person, or by several who are working through GitHub to sync the work. There are overall two main steps to preparing to input your layers into the Toolbox, starting with data layer preparation, and then going into data layer registration. The firs step involves placing files into `layers` folder, and the second is registering those files in `layers.csv`. This file preparation process can occur in tandem with the model modification process. However, it must occur in order for you to run modified goal code using your new input data.

![Diagram of OHI Toolbox data preparation workflow. You should start by prepping the files, loading them into the `layers` folder when they're ready for the Toolbox, and then registering them in `layers.csv`](https://docs.google.com/drawings/d/1-WB84qsupe4yeqKzeBnOSm9iIW-G7N3EYW0VqqGXORs/pub?w=960&h=720)

#### Overview of the Process

The following sections will describe the files included in the Toolbox. You will learn how to start preparing data layers for your assessment and how to start changing goal models. This is an iterative process, and you should start to follow the best approach to the work flow for your assessment. Importantly, you will learn how the different files in the Toolbox interact with each other to produce the final calculated scores, starting from registering your input layers in *layers.csv* to receiving the output scores from the *scores.csv* spreadsheet.

![Recommended steps in which to engage with files in the OHI Toolbox.](https://docs.google.com/drawings/d/155-wj8S-cDsbahZgmn5wJ1WHou0XS-2j_GOiX47QvkI/pub?w=315&h=1022)
