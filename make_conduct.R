# TODO:
# - use bibliography
# use title. problem now is that input md docs already using header 1

# load libraries ----
library(knitr)
library(rmarkdown)
library(stringr)

redo_website = F # T if push to ohi-science.org/manual; F if do not push. Displays T/F after rendering all


# move copy of README.md 
stopifnot(file.copy('~/github/ohimanual/3_conduct_manual/README.md', 
                    '~/github/ohimanual/README.md', overwrite=T))    

# set variables ----
title = 'The Ocean Health Index Assessment Manual'
wd = '~/github/ohimanual/3_conduct_manual'

in_md = c(
  # 'README.md', # ---> Removed because covered in Conc. Guide; new portal
  #'what_is_OHI+.md', # --> masked 6/16/15
  'intro_assessment.md',                             # reviewed for 07/09 push
  # 'conduct_assessment.md', # --> Removed because sub-sections moved into appropriate Phases (see .md)
  #'before_conduct_assessment.md', # --> Removed because covered in Conc. Guide (see .md)
  'intro_webapp.md',                                 # reviewed for 07/09 push
  'defining_spatial.md',                             # reviewed for 07/09 push. TODO: new figs
  'assemble_inputs.md',                              # reviewed for 07/09 push
  #'intro_goalbygoal.md',                            # TODO: review and update
  #'practical_HAB_goals_CS_CP.md',                   # TODO: review and update
  #'practical_species_BDD_ICO.md',                   # TODO: review and update
  #'practical_SP.md',                                # TODO: review and update
  #'practical_FP_NP.md',                             # TODO: review and update
  #'practical_LE_TR.md',                             # TODO: review and update
  #'practical_AO.md',                                # TODO: review and update
  #'practical_CW.md',                                # TODO: review and update
  #'pressures_resilience.md',                        # TODO: review and update JSL 
  'intro_to_tbx.md',                                 # reviewed for 07/09 push. TODO: see notes
  'file_system.md',                                  # reviewed for 07/09 push
  'formatting_data.md',
  #'data_transformation.md',                         # TODO: review and update JSL 
  'install_tbx.md', # ready to push 7/09
  'accessing_github_repos.md',                       # TODO: review and update
  'github_architecture.md',
  'use_tbx.md', # JSL to review
  'use_tbx_to_modify_data_layers.md',
  'use_tbx_to_modify_pressures_resilience.md',
  'use_tbx_to_modify_goal_models.md',
  # 'use_tbx_to_modify_goal_models_practical.md',    # TODO: review and update JSL 
  'use_tbx_to_remove_goal_models.md',
  'use_tbx_to_modify_goals_categories.md',
  'example_modifications_with_tbx.md',
  'update_webapp.md',                                # reviewed for 07/09 push
  'R_tutes_all.md',                                  # reviewed for 07/09 push
  'toolbox_troubleshooting.md',                      # TODO: review and update
  'frequently_asked_questions.md')                   # TODO: review and update
out_md = 'ohi-manual.md'

# cleanup functions within files and for filenames ----
## within a file, rename some .md files
# for (f in list.files(getwd(), glob2rx('*.md'))){ # f = list.files(getwd(), glob2rx('*.md'))[1]
#   s = readLines(f, warn=F, encoding='UTF-8')
#   s = str_replace_all(s, fixed('regional_assessment_intro.md'), fixed('intro_regional_assessment.md'))
#   writeLines(s, f)
# }
# rename filenames
# setwd(wd)
# for (f in list.files(getwd(), glob2rx('*.md'))){ #f = list.files(getwd(), glob2rx('*.md'))[1]
#   file.rename(f, str_replace(f, '3_',''))
# }


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
#cat_md()                           # use default file listing of *.md, default output _all_.md
#cat_md(md_order)                   # use own md ordered file listing , default output _all_.md
cat_md(in_md, out_md)               # use own md ordered file listing , output to ohi-manual.md
pfx = tools::file_path_sans_ext(out_md)

# render html ----
render(
  out_md,
  html_document(
    number_sections=T, fig_width = 3, fig_height = 2, fig_retina = 2, fig_caption = T, smart=T,
    self_contained=F, theme='default',
    highlight='default', mathjax='default', template='default',
    toc=T, toc_depth=3),
  clean=T, quiet=F,
  output_file = paste0(pfx, '.html'))
cat(sprintf('---
layout: page
title : Manual
tagline: %s
header : The Ocean Health Index Assessment Manual
group: navigation
---
{%s include JB/setup %s}
', format(Sys.time(), "%d %B %Y"), '%', '%'), file='~/github/ohi-science.github.io/manual/index.html')
cat(
  readLines(paste0(pfx, '.html')),
  file='~/github/ohi-science.github.io/manual/index.html',
  append=T)
# #file.copy(paste0(pfx, '.html'), '~/github/ohi-science.github.io/manual/index.html', overwrite=T)
if (redo_website) {
  dir.create('~/github/ohi-science.github.io/manual/fig', showWarnings=F)
  file.copy('fig', '~/github/ohi-science.github.io/manual', overwrite=T, recursive=T)
  system('cd ~/github/ohi-science.github.io; git pull; git add -A; git commit -m "update manual"; git push')
}

# render docx ----
render(
  out_md,
  word_document(
    fig_caption = T, fig_width = 7, fig_height = 5,
    highlight='default', reference_docx='default'),
  clean=T, quiet=F,
  output_file = paste0(pfx, '.docx'))

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


# message regarding redo_website ----

cat(sprintf('ohi-science.org/manual was updated: %s', redo_website))
if(redo_website ==F) cat("to update ohi-science.org/manual, change the 'redo_website' variable from FALSE to TRUE")
