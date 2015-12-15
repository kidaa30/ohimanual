# make_functions.r 
# These functions functions to be used to stitch together all the .md files for the Phases of OHI Assessments. 

## load libraries ----
library(knitr) # install.packages("knitr")
library(rmarkdown)
library(stringr)

# concatenate md files together ----
cat_md = function(
  files_md = setdiff(list.files(getwd(), glob2rx('*.md')), out_md),
  out_md  = '_all_.md'){
  
  if (file.exists(out_md)) unlink(out_md)
  
  cat('---\n', 'title: ', title_header, '\n---\n\n', sep='', file=out_md, append=T)
  
  for (md in files_md){
    cat(paste(c(readLines(md),'',''), collapse='\n'), file=out_md, append=T)
  }
}

# render pdf for OHI----
ohi_pdf = function(out_md) {
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
}

# render html for OHI in local ohimanual repo---- 
ohi_html_local = function(out_md) {
  render(
    out_md,
    html_document(
      number_sections=T, fig_width = 3, fig_height = 2, fig_retina = 2, fig_caption = T, smart=T,
      self_contained=F, theme='default',
      highlight='default', mathjax='default', template='default',
      toc=T, toc_depth=3),
    clean=T, quiet=F,
    output_file = paste0(pfx, '.html'))
}


# render html for OHI and push to ohi-science.org
ohi_html = function(out_md, title_header, title_short) { 
  render(
    out_md,
    html_document(
      number_sections=T, fig_width = 3, fig_height = 2, fig_retina = 2, fig_caption = T, smart=T,
      self_contained=F, theme=NULL,
      highlight=NULL, mathjax='default',
      toc=T, toc_depth=3),
    clean=T, quiet=F,
    output_file = paste0(pfx, '-external.html'))
  
  cat(sprintf('---
layout: manual
title : %s
tagline: %s
header : %s
---
{%s include JB/setup %s}
', 
              title_short,
              format(Sys.time(), "%d %B %Y"), '%', '%',
              title_header), 
      file=sprintf('~/github/ohi-science.github.io/%s/index.html', tolower(title_short)))
  cat(
    readLines(paste0(pfx, '-external.html')),
    file=sprintf('~/github/ohi-science.github.io/%s/index.html', tolower(title_short)), append=T)
  if (title_short == 'Manual') {
    dir.create('~/github/ohi-science.github.io/manual/fig', showWarnings=F)
    file.copy('fig', '~/github/ohi-science.github.io/manual', overwrite=T, recursive=T)
  }
  system('cd ~/github/ohi-science.github.io; git pull; git add manual -A; git commit -m "update phase docs"; git push')
}
