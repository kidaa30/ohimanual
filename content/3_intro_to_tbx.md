# The Ocean Health Index Toolbox

>**Section Summary:**

>In this section, you will learn the basics of how to use the OHI Toolbox to conduct your assessment. You will be introduced to files the Toolbox requires, how you will modify them, and how they interact to calculate the final output scores.

**The OHI Toolbox** is the combination of two *repositories*: folders containing everything required to calculate OHI scores. The first is your assessment repository, that has a three-letter code, such as `esp` for Spain or `ecu` for Ecuador. You will edit this repository with your data, goal models, and updated pressures and resilience matrix tables. The second repository is called `ohicore`, and it contains core functions for combining your data and goal models to calculate OHI scores. You will not edit `ohicore`, but you are able to explore it to understand the calculations.

Your *assessment repository* is an ecosystem of data input layers, configuration files, and scripts. They are organized in the same way within a *scenario folder* called `subcountry2014`, with data layers, goal model equations, and configuration files from the global 2014 assessment. Files within the scenario folder are comma-separated-value (*.csv*) files and scripts written in the programming language *R*.

<!---simple figure of your repo + ohicore--->

The Toolbox is open-source and can be downloaded and installed at no cost. You are able to navigate through these files both on `www.github.com/OHI-Science` and on your own computer once you have cloned the repository to your computer. GitHub is an online platform used by the OHI that archives past versions of all files and attributes changes to the proper collaborator. It can be accessed remotely by all members of your team and enables team members to synchronize their work remotely. Because all versions are saved, you can return to previous work and also compare different points in history to track how changes you make affect the output scores. Instruction on how to access your repository is in the `Installing the Toolbox` section below.

The following sections will describe the files included in the Toolbox. You will learn what is required for  data layers for your assessment and how to change goal models.  
