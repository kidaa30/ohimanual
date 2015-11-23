
# load libraries ----
library(knitr) # install.packages("knitr")
library(rmarkdown)
library(stringr)
# Also required if you get the pdflatex error: www.tug.org/mactex

# set variables ----
title = 'The Ocean Health Index Orientation'
wd = '~/github/ohimanual/0_orientation'


in_md = c(
   '0_Welcome.md',
  # 'Phase_0.md',   # currently this file is in 0_orientation; JSL not sure it fits here?
  # 'Phase_1.md'
  # 'Phase_2.md'
  # 'Phase_3.md'
  # 'Phase_4.md'
   '0_glossary.md'
)

out_md = 'ohi-orientation.md'



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
