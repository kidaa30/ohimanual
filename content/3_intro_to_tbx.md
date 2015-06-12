# The Ocean Health Index Toolbox

>**Section Summary:**

>In this section, you will learn the basics of how to use OHI+ tools for conducting your assessment. You will be introduced to the files you will be working with, how to prepare them, and you will learn how the files are used together to create the final output scores.

![The files, or tools, in your OHI+ Toolbox.](https://docs.google.com/drawings/d/1Lp5qlIgEj32HJpRtqcCwPsQmz4LBqJBVhPk8N0yT2cY/pub?w=960&h=800)

**The OHI+ Toolbox** is an ecosystem of data, scripts, and folders used to organize your data and calculate your scores. The Toolbox given for your country in a standardized form, including the file structure outlined in this guide along with standard map shape files for your world region. You can change the map files once you are ready. This standard form includes files and folders that will allow you to both prepare your data and then modify goal models in order to run your data through the code.

The Toolbox is used to calculate final scores. But, perhaps more importantly, it can also be used to organize an assessment, including data identification and management.  The Toolbox can additionally be used to compare how different management scenarios could affect overall ocean health, which can inform effective strategies for ocean resource management at a local scale.

When you first encounter the Toolbox, you will notice that it has many files in it. These files fall into different categories: some are *.csv* spreadsheets and some are R codes, and some are description text files. Some files you will modify, and some will you leave intact, such as `install_ohicore.R` which is created and maintained by the OHI+ development team to ensure that your calculations run successfully while the software gets developed. The main place you will spend time will be in **preparing the input data layers** for all of your goal models, pressures, and resiliences. This has partially been indicated for you by the default `prep` folders in your repository. You will then prepare the **registration of the information in the necessarily places**, and at the same time develop the goal models and code. It will be a back-and-forth process, but generally speaking you will prepare your files first and then run the code in order to produce the calculated scores.

The Toolbox scripts are all open-source. They are written in the statistical programming language, **R**. The data inputted into the Toolbox are **comma-separated-value**, or *.csv* files, which can be created or edited using R, Microsoft Excel, or text editors. This allows for different users to collect and prepare the data. Your script and data files are stored within online folders called **repositories**, or *(repos)*. Your team has your repo that you will use, but the Toolbox will also engage with another repo that contains the core functions necessary for scripts to run.

You can think of it in the following manner:

> OHI Toolbox = your assessment repository + `ohi core functions` repository.

> The `OHI core functions` repository is developed and maintained by the OHI-Science team. You will not work in this repository, but you will need to know if it is updated. This is where it is useful to contact our team when you have questions.

The files needed for the Toolbox can be downloaded onto your computer so that other members of your team can engage with the files in RStudio without having to go through GitHub (see **Installing the Toolbox**).

Some members of your team will interact with the Toolbox ecosystem through an online collaborative platform called **GitHub**. GitHub stores the **R** scripts and *.csv* files in a folder called a repository, or (repo), which is stored online. It can be synchronized in real-time and it can be accessed remotely by all members of your team. GitHub tracks changes by all collaborators working on the project through time, and saves all versions of your work history. This means you can return to an earlier version of your work and pursue a trial-and-error approach to your goal model development. It also means that later, when using the WebApp, you can compare different points in history to track how changes you make the code and data inputs would affect the output scores.

You can use both RStudio and GitHub to engage with the files in the Toolbox. These two platforms are used for different things. They require different levels of knowledge. This means you can have one team member work through R, such as a programmer who specifically works on data preparation, and you can also have other members of the team work through GitHub to monitor progress and make recommendations. The flow of information is such that R users can download information from GitHub, and GitHub users can see the changes to the code that have been made by the R users. Not everyone needs to use both. You can work on the Toolbox entirely outside of GitHub by downloading the files in .ZIP fashion. However, to visualize it on the WebApps, you will need to be connected online, although there is another way to visualize the outpute scores on your computer after you've conducted the assessment (See the section, **File System**.)

**Best practices of GitHub and RStudio**

| Used for | GitHub | RStudio |
|-----|-------|------|
| Version control | Yes | Yes |
| Writing model code| No | Yes
| Reading model code | Yes | Yes |
| Calculating scores | No | Yes |
| Storing files for syncing | Yes | No
| Programming functions | No | Yes |
| Tracking change history | Yes | No |

***

Once scores have been calculated, the Toolbox will automatically update certain pages of your GitHub repository and those changes will be pushed forward to the WebApp. You can then return to the OHI+ WebApp to visualize the results at the end of the process.
