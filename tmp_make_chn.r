# TODO:
# - use bibliography
# use title. problem now is that input md docs already using header 1

# load libraries ----
library(knitr)
library(rmarkdown)
library(stringr)


# set variables ----
title = 'Drawing spatial boundaries'
wd = '~/github/ohimanual'

# Version below, June 12, 2015:

in_md = c(
  'tmp_chn_instructions.md')
out_md = 'spatial_instructions.md'



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
cat_md(in_md, out_md)               # use own md ordered file listing , output to ohi-manual.md
pfx = tools::file_path_sans_ext(out_md)


# render docx ----
render(
  out_md,
  word_document(
    fig_caption = T, fig_width = 7, fig_height = 5,
    highlight='default', reference_docx='default'),
  clean=T, quiet=F,
  output_file = paste0(pfx, '.docx'))
