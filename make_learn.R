
# load libraries ----
library(knitr) # install.packages("knitr")
library(rmarkdown)
library(stringr)
# Also required if you get the pdflatex error: www.tug.org/mactex

# set variables ----
title = 'The Ocean Health Index Conceptual Guide (Learn Phase)'
wd = '~/github/ohimanual/1_learn_concguide'



in_md = c(
  # 'Phase_1.md',   # currently this file is in 0_orientation; JSL not sure it fits here?

  # Note to Erich: These are a few files that were removed from the Manual (Phase 3)--we'll need to
  # make sure they are covered Guide (Phase 1):

  # '~/github/ohimanual/README.md',
  # '~/github/ohimanual/3_conduct_manual/what_is_OHI+.md',
  # '~/github/ohimanual/3_conduct_manual/conduct_assessment.md',
  # '~/github/ohimanual/3_conduct_manual/before_conduct_assessment.md',


  'What_is_OHI.md',
  'Understand_Scales_of_Assessement.md',
  'WebApp_intro.md',
  'Determine_the_Need_and_Purpose.md',
  'Why_ten_goals.md',
  'How_Are_Goals_Weighted.md',
  'How_Is_The_Index_Calculated.md',
  'Reference_Points.md',
  'Understanding_Status.md',
  'Understanding_Pressures.md',
  'Understanding_Resilience.md',
  'Understanding_Trend.md',
  'Pres_Resi_interactions.md',
  'FP_Philosophy.md',
  'AO_Philosophy.md',
  'NP_Philosophy.md',
  'CS_Philosophy.md',
  'CP_Philosophy.md',
  'LE_Philosophy.md',
  'TR_Philosophy.md',
  'SP_Philosophy.md',
  'CW_Philosophy.md',
  'BD_Philosophy.md')
  # summarzing ending             # add some kind of summary

out_md = 'ohi-concguide.md' # <- this is the output "final" file.


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
