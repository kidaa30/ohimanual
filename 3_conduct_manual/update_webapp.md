## Updating the WebApp's pages

The WebApp displays input layers on several pages: on the App page, Layers page, and Scores page. These input layers are displayed from `layers.csv` and the layers within the `layers` folder and the scores are displayed from `scores.csv`. While the input layers and scores will be automatically displayed on the WebApp, there is other content on WebApps pages that can be edited by your team and displayed. You will likely spend the most time updating the equations displayed on the Goals page to be consistent with the updated methods you have used in your assessment.

For the WebApp to display the pages properly, not everything on each page can be edited as it is written in a language to create the website. But it is possible to explore the files and update much of the text that is displayed while maintaining the required formatting. To do this, follow the instructions in `update_webapps.r` and switch to the `gh-pages` branch of your repository.

If you choose to edit the files in RStudio, you will be able to view your work as it will be displayed on the WebApp by clicking the 'Preview HTML'.

![image](https://docs.google.com/drawings/d/1QUE7LkgyjXLKk63Bf4F6x-g3fHofZHLcRFXiExuQyFs/pub?w=576&h=288)

### Homepage

On the homepage, you are able to edit two files. The first is called `index.md` and it is in your repo's main folder (for example, `ecu/index.md`). This file allows you to modify the text regarding 'Learn', 'Explore', and 'Build'. Perhaps more useful to modify is the `home.html` file in the `_layouts` folder (for example, `ecu/_layouts/home.html`. This file allows you to modify the text for the 'Starter Kit'. Search for these terms to modify this banner.

### App

The App page does not have much text to be modified. To explore the App page's text, see for example `ecu/app/index.md`.

### Regions

You may have redefined the spatial boundaries of the regions used in your assessment, or you may want to update the information provided about them. This can be done in the `index.md` file in the `regions` folder, for example `gye/regions/index.md`.

### Layers

Most of the information displayed on the Layers page of the WebAppis taken from the `layers.csv`, and therefore to modify any information about specific data layers, you will need to modify the `layers.csv` file within the draft branch of your repository. However, you are able to edit the header text information at the top of the Layers page if you wish. This can be done in the `index.md` file in the `layers` folder of the `gh-pages` branch, for example `gye/regions/index.md`.

### Goals

You will likely spend the most time modifying the information displayed on the Goals page, as these show and describe the models used in the assessment. This page is not updated automatically from the draft branch and will have to be modified by your team. This can be done in the `index.md` file in the `goals` folder of the `gh-pages` branch, for example `gye/goals/index.md`.

The equations on the Goals page are written in LaTex, which the WebApp displays nicely formatted. To update model equations, you will need to use the LaTex format. You can learn the syntax by studying how the equations from the global assessments are displayed, and from many resources online. One resource is https://en.wikibooks.org/wiki/LaTeX/Mathematics.

### Scores

The scores displayed on the Scores page of the WebApp are the calculated scores from the `scores.csv` file in the draft branch, and therefore cannot be modified. However, you are able to edit the header text information at the top of the Scores page if you wish. This can be done in the `index.md` file in the `scores` folder of the `gh-pages` branch, for example `gye/scores/index.md`.
