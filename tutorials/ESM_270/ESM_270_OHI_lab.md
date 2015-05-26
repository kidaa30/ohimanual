---
title: "ESM 270 Ocean Health Index Lab"
output: pdf_document
---

# Introduction

The Ocean Health Index [intro here]

Intro to WebApps concept and overview of lab exercise
 - study areas and regions
 
In this assignment you will explore how the Ocean Health Index would respond to several different management scenarios. You will do this by identifying three components of the OHI that could be affected by three different scenarios, and recalculate the scores with these changes. 

# Setup Instructions

You access an existing WebApp and modify it locally on your computer to complete the assignment. You will need to install R (and preferably RStudio) to complete the assignment. 

**Setup Instructions:**

1. Create a folder called `**github**` in your home directory so that the R scripts will run smoothly. This folder will have the following filepath:
    - **Windows**: `Users\[User]\Documents\github\`
    - **Mac**: `Users/[User]/github/`

2. **R**: Download and install the current version of R from [cran.r-project.org](http://cran.r-project.org/). 

3. **RStudio**: Download and install the current version of RStudio from [rstudio.com](www.rstudio.com). 

4. Choose a coastal country or territory that has a WebApp using the list available at [ohi-science.org/subcountry](). The WebApp you choose must have a green `build | passing` indicator associated with its study area. 
    - click the three-letter key (`xxx`) in the '*Repo*' column to explore the WebApp of that study area. 
    - click the date in the '*Last Mod*' column to explore the GitHub repository of that study area. 

5. Click the '*Download ZIP*' button on the main page of the repository for your key (github.com/OHI-Science/`xxx`)
    - NOTE: please do not choose CHN, as it is under development. 

6. Unzip the downloaded ** *.zip* ** folder and save in your `github` folder, removing the `-draft` from the folder's name so that it is simply **`xxx`**.
  
7. Double-click the `.Rproj` file to open **RStudio**, and then follow the instructions below. Note that anything following the `#` symbol in R is a comment providing description or instruction and will not be executed by R.

8. Type the following in the Console window, replacing 'xxx' with your 3-letter code:
    - **` key = 'xxx'`**. Don't forget the quotes!

9. Paste the following into the Console window:

```
# set the working directory
wd = (sprintf('~/github/%s/subcountry2014', key))
setwd(wd)

# install OHI Toolbox software and necessary packages
source(file.path(wd, 'install_ohicore.r'))
install.packages(c('devtools', 'dplyr'))
library(devtools)
library(dplyr)

# save a copy of the original calculated scores
file_save_orig = 'scores_orig.csv'
file.copy('scores.csv', file_save_orig, overwrite=T)
csv_orig = file.path(wd, file_save_orig)

```

# Lab Instructions 

**L3. Explore assessment inputs.**  

Use the WebApp at **`http://ohi-science.org/xxx/app/`** (replacing `xxx` with your key) to explore the input layers that contribute to each goal. Do this by selecting 'Input Layer' as the variable type and changing the targets. Input layers are identified in the third pull-down menu by title and by the layername (in parentheses).    

Determine which goals you would like to modify. 



## Assignment

### A1. Modify Layer 1

**In the R Console:**

```{r}

# Type the following in your R Console window, identifying the data layer to modify: 
layerA1 = 'layer_name_here' # write the layername. Example: layerA1 = 'ao_need'

# paste the following in your R Console window:
infoA1 = read.csv('layers.csv') %>% filter(layer==layerA1) %>% select(layer, targets, filename)
print(infoA1)
goalA1 =  infoA1$target


# the filename column identifies the layer's filename, located in `subcountry2014/layers`

```

**Modify the file in excel**

a) In Windows Explorer, find the filename located within `subcountry2014/layers` and modify as desired. Change only values, do not delete or add rows or columns.

b) Save the changes and close the file. 

c) Describe the modifications and why. What behavior do you expect from Ocean Health Index scores?


```
# Paste the following into your R Console

# recalculate the scores with your modifications
source(file.path(wd, 'calculate_scores.r'))

# save a copy of these scores with 
file_save = 'scores_A1' # you can change this name if you'd like
file.copy('scores.csv', paste0(file_save, '.csv'), overwrite=T)
csv_new = file.path(wd, paste0(file_save, '.csv'))
layer_changed = layerA1
fig_save = file.path(wd, paste0(file_save, '.png'))


# Paste the following into your R Console

# load comparison functions compareVis_scores.r
# devtools::source_url('https://raw.githubusercontent.com/OHI-Science/ohidev/master/test.r?token=AFnnRaypXn4nUTvokCyu9ENmOIH7by-eks5VaOq6wA%3D%3D')
source('~/github/ohimanual/tutorials/ESM_270/compareVis_scores.R')  # for testing; to be completed after discussing with BH

changePlot(csv_orig, csv_new, layer_changed, fig_save)
(csv_orig, csv_new, layer_changed, fig_save, goalA1)


# compare_scores based on Mel. 

```

### A2. Modify Layer 2

REPEAT ...

### A3. Modify Layer 3

REPEAT ...
