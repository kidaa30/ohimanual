# The Ocean Health Index Toolbox

>**Section Summary:**

>In this section, you will learn the basics of how to use OHI+ tools for conducting your assessment. You will be introduced to the files you will be working with, how to prepare them, and you will learn how the files are used together to create the final output scores.

![The files, or tools, in your OHI+ Toolbox.](https://docs.google.com/drawings/d/1Lp5qlIgEj32HJpRtqcCwPsQmz4LBqJBVhPk8N0yT2cY/pub?w=960&h=800)

**The OHI Toolbox** is an ecosystem of data, scripts, and file structures required to calculate your OHI+ scores. The Toolbox comes pre-prepared for your country in a consistent form, including files and folders that will allow you to both prepare your data and then modify goal models in order to run your data through the code.

Toolbox scripts are open source, written in the software language R, and data inputted into the Toolbox are **comma-separated-value**, or *.csv* files, which can be created or edited using text editors or Microsoft Excel. Files are stored within two folders called **repositories**, or *(repos)*, such that

> OHI Toolbox = your assessment repository + `ohi core functions` repo.

You can use both RStudio and GitHub to engage with the files in the Toolbox.

Some members of your team will interact with the Toolbox ecosystem through an online collaborative platform called **GitHub**. GitHub stores the **R** scripts and *.csv* files in a folder called a repository, or (repo), which is stored online and can be remotely synchronized. GitHub tracks changes by all collaborators working on the project through time, and saves all versions for comparison. The files needed for the Toolbox can be downloaded onto your computer so that other members of your team can engage with the files in RStudio without having to go through GitHub (see **Installing the Toolbox**).

The Toolbox is used to calculate final scores. But, perhaps more importantly, it can also be used to organize an assessment, including data identification and management.  The Toolbox can additionally be used to compare how different management scenarios could affect overall ocean health, which can inform effective strategies for ocean resource management at a local scale.

When you first encounter the Toolbox, you will notice that it has many files in it. These files fall into different categories: some are *.csv* spreadsheets and some are R codes, and some are description text files. Some files you will modify, and some will you leave intact, such as `install_ohicore.R` which is created and maintained by the OHI+ development team to ensure that your calculations run successfully while the software gets developed. The main place you will spend time will be in **preparing the input data layers** for all of your goal models, pressures, and resiliences. This has partially been indicated for you by the default `prep` folders in your repository. You will then prepare the **registration of the information in the necessarily places**, and at the same time develop the goal models and code. It will be a back-and-forth process, but generally speaking you will prepare your files first and then run the code in order to produce the calculated scores.

Once scores have been calculated, the Toolbox will automatically update certain pages of your GitHub repository and those changes will be pushed forward to the WebApp. You can then return to the OHI+ WebApp to visualize the results at the end of the process.
