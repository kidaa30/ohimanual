
# load libraries ----
library(knitr) # install.packages("knitr")
library(rmarkdown)
library(stringr)
# Also required if you get the pdflatex error: www.tug.org/mactex

# set variables ----
title = 'The Ocean Health Index Planning Guide'  # change title??
wd = '~/github/ohimanual/2_plan'


in_md = c(
  #'Phase_2.md',     # currently this file is in 0_orientation; JSL not sure it fits here?
  'Understand_Requirements_for_Assessment.md',
  'Funding.md',
  'Assembling_team.md', # --> Developing; fix
  'Data_Requirements.md',
  'Planning_and_Partnering.md',
  'Who_Should_Be_Involved.md',
  'Conducting_a_Stakeholder_Analysis.md',
  'Introducing_Concept_to_Stakeholders.md',
  'Considerations_for_Joint_Planning.md',
  'Vision.md',
  'Objectives.md',
  'Spatial_Scale.md',
  'Strategy.md',
  'Costs_and_Financial_Planning.md',
  'Adaptive_Management.md')
  # summarzing ending             # add some kind of summary

out_md = 'ohi-plan.md' # <- this is the output "final" file.


# helper functions ----
cat_md = function(
  files_md = setdiff(list.files(getwd(), glob2rx('*.md')), out_md),
  out_md  = '_all_.md'){
  
  if (file.exists(out_md)) unlink(out_md)
  
  cat('---\n', 'title: ', title, '\n---\n\n', sep='', file=out_md, append=T)
  
  for (md in files_md){
    cat(paste(c(readLines(md),'',''), collapse='\n'), file=out_md, append=T)
  }
}

# concatenate md ----
setwd(wd)
cat_md(in_md, out_md)               
pfx = tools::file_path_sans_ext(out_md)

# render pdf ----
render(
  out_md,
  pdf_document(
    toc = T, toc_depth = 3, number_sections = T,
    fig_width = 6.5, fig_height = 4.5, fig_crop = TRUE,
    fig_caption = T, highlight = "default", template = "default",
    keep_tex = F, latex_engine = "pdflatex",
    includes = NULL, pandoc_args = NULL),
  clean=T, quiet=F,
  output_file = paste0(pfx, '.pdf'))

