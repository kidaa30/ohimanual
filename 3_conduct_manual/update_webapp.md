## Updating the WebApp's pages

The WebApp displays input layers on several pages: on the App page, Layers page, and Scores page. These input layers are displayed from `layers.csv` and the layers within the `layers` folder and the scores are displayed from `scores.csv`. While the input layers and scores will be automatically displayed on the WebApp, there is other content on WebApps pages that can be edited by your team and displayed. You will likely spend the most time updating the equations displayed on the Goals page to be consistent with the updated methods you have used in your assessment.

For the WebApp to display the pages properly, not everything on each page can be edited as it is written in a language to create the website. But it is possible to explore the files and update much of the text that is displayed while maintaining the required formatting. To do this, run `copy_webapps_templates.r` once, before further modifications on the WebApp contents. This actions creates a folder called `webapps_templates` and copies template files there.

It is best to edit the files in RStudio: you will be able to view your work as it will be displayed on the WebApp by clicking the 'Preview HTML'.

![](https://docs.google.com/drawings/d/1QUE7LkgyjXLKk63Bf4F6x-g3fHofZHLcRFXiExuQyFs/pub?w=576&h=288)

### Regions

You may have redefined the spatial boundaries of the regions used in your assessment, or you may want to update the information provided about them. This can be done with the file called `webapps_templates/regions.brew.md`.

### Layers

Most of the information displayed on the Layers page of the WebAppis taken from the `layers.csv`, and therefore to modify any information about specific data layers, you will need to modify the `layers.csv` file within the draft branch of your repository. However, you are able to edit the header text information at the top of the Layers page if you wish. This can be done with the file called `webapps_templates/layers.brew.md`.

### Goals

You will likely spend the most time modifying the information displayed on the Goals page, as these show and describe the models used in the assessment. Text can be modified with the file called `webapps_templates/goals.brew.md`.

To edit the goal equations themselves, you will edit the `goals.Rmd` found in the `conf` folder (example: `ecu/subcountry2014/conf/goals.Rmd`. This is an Rmarkdown file, with equations written in LaTex. When rendered by RStudio or the WebApp, it displays nicely formatted. To update model equations, you will need to use the LaTex format. You can learn the syntax by studying how the equations from the global assessments are displayed, and from many resources online. One resource is https://en.wikibooks.org/wiki/LaTeX/Mathematics. Learn more about .Rmd formatting at http://shiny.rstudio.com/articles/rmarkdown.html.

### Scores

The scores displayed on the Scores page of the WebApp are the calculated scores from the `scores.csv` file in the draft branch, and therefore cannot be modified. However, you are able to edit the header text information at the top of the Scores page if you wish. This can be done with the file called `webapps_templates/scores.brew.md`.
