---
title: "ESM 270 Ocean Health Index Lab"
output: pdf_document
---

# Introduction

In this assignment you will explore how the Ocean Health Index (OHI) would respond to different management scenarios. You will do this by modifying input data based on the management scenarios you choose, and recalculating the OHI scores.

To facilitate independent OHI assessments, we have created the OHI Toolbox software, which has everything you need to start an assessment. Data and scripts are stored online in 'repositories' at [https://github.com/ohi-science](), and information is visualized in 'WebApps' at [http://ohi-science.org]().

# Setup Instructions

In this assignment you will explore an existing OHI WebApp for the country of your choice. You will download its repository and modify some of the input data on your computer. You will use R and RStudio to complete the assignment.

1. Create a folder called `**github**` in your home directory so that the R scripts will run smoothly. This folder will have the following filepath:
    - **Windows**: `Users\[User]\Documents\github\`
    - **Mac**: `Users/[User]/github/`

2. Choose a coastal country or territory that has a WebApp using the list available at [ohi-science.org/subcountry](). The WebApp you choose must have a green `build | passing` indicator associated with its study area.
    - click the three-letter key (`xxx`) in the '*Repo*' column to explore the WebApp of that study area.
    - click the date in the '*Last Mod*' column to explore the GitHub repository of that study area.
    - NOTE: please do not choose CHN, as it is under development

3. Click the '*Download ZIP*' button on the main page of the repository for your key (linked from '*Last Mod*'): **github.com/OHI-Science/xxx**

4. Unzip the downloaded ** *.zip* ** folder and save in your `github` folder, removing the `-draft` from the folder's name so that it is simply **`xxx`**.

5. Double-click the `.Rproj` file to launch **RStudio**, and then follow the instructions below. Note that anything following the `#` symbol in R is a comment providing description or instruction and will not be executed by R.

6. Type the following in the Console window, replacing 'xxx' with your 3-letter code. Don't forget the quotes!

    - **` key = 'xxx'`**

7. Paste the following into the Console window:

```
# set the working directory
wd = (sprintf('~/github/%s/subcountry2014', key))
setwd(wd)

# install OHI Toolbox software and necessary packages
source(file.path(wd, 'install_ohicore.r'))
install.packages('dplyr')
library(dplyr)

# save a copy of the original calculated scores
file_basename_orig = 'scores_orig.csv'
file.copy('scores.csv', file_basename_orig, overwrite=T)
csv_orig = file.path(wd, file_basename_orig)

```

# Lab Assignment

Use the WebApp  (**`http://ohi-science.org/xxx/app`**, replacing `xxx` with your key)  to explore the input layers that contribute to different goals. Do this by selecting 'Input Layer' as the variable type and selecting different goals as the target. Input data layers are identified in the third pull-down menu by title and by the layername (in parentheses). You can view these data on the Map, Histogram, and Table tabs. Use the Layers page to learn more about each data layer.

Choose two goals and one pressure that could be affected by three different management scenarios based on the data layers included in those goals. Document this in your report, along with how you will modify the input layers. How do you expect goal scores and combined Index scores to be affected?


### 1. Find the `.csv` file to modify.  

Type the following in your R Console window, writing the layername you will modify in quotes. (Example: layer_mod = 'ao_need')

```
layer_mod = 'layer_name_here'
```

Paste the following in your R Console window:

```
info_mod = read.csv('layers.csv') %>%
        filter(layer==layer_mod) %>%
        select(layer, targets, filename)
goal_mod =  info_mod$target
print(info_mod)

```

The output in your R Consule identifies the filename of the layer you have chosen. This `.csv` file is located in the folder called `subcountry2014/layers`.



### 2. Modify the `.csv` file  

You can modify the `.csv` file in RStudio, a text editor, or in Excel. Navigate to it within the RStudio Files pane or using Windows Explorer. All `.csv` layers files are in the `subcountry2014/layers` folder.

When you have made your modifications, save and close the file. Document the changes you've made in your report.

**What modifications should you make?** This will depend on your management scenario your assumptions. You can increase or decrease any numeric value, and do this in any combination for all regions or only a subset. There are only a few constraints:

* Change only numeric values
* Do not delete or add rows or columns
* Notice the range of values within your data layer. If the numeric values are scores between 0 and 1, make sure any modifications you do keep the values within that range
  * Optional: to quickly check the range of values you can paste the following into your R Console:
  ```
  suppressWarnings(require(ohicore))
  layers = Layers('layers.csv', 'layers')
  summary(layers$data[[layer_mod]])
  ```  

### 3. Recalculate and visualize OHI scores  

Paste the following into your R Console to recalculate the scores with your modifications:  
NOTE: this will take take several seconds. Progress is logged in the R Console and will be complete when you see the `>` symbol again.

```
source(file.path(wd, 'calculate_scores.r'))
```

Paste the following into your R Console to name and save a copy of these modified scores:

```
file_basename = paste0('scores_', layer_mod)
csv_new = file.path(wd, paste0(file_basename, '.csv'))
file.copy('scores.csv', csv_new, overwrite=T)
```

Paste the following into your R Console to name and save figures:

```
# load comparison functions compareVis_scores.r
devtools::source_url(
  'https://raw.githubusercontent.com/OHI-Science/ohimanual/master/tutorials/ESM_270/compareVis_scores.R')

fig_save = paste0(file_basename, '_comparePlot.png')
comparePlot(csv_orig, csv_new, layer_mod, fig_save)
fig_save = paste0(file_basename, '_scatterPlot.png')
scatterPlot(csv_orig, csv_new, layer_mod, fig_save, goal_mod)

```

Open the figures by clicking on them in the File pane of RStudio (they will be within the `subcountry2014` folder) or from Windows Explorer. See how scores changed compared to other goals with the '_changePlot.png' and how individual regions changed with '_scatterPlot.png'.

### 4. Repeat Steps 1-3 for two goal layers and one pressure layer  

Along with what you modified, be sure to document how scores changed and whether this is what you expected to happen. 
