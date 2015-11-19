# make_functions.r 
# These functions functions to be used to stitch together all the .md files for the Phases of OHI Assessments. 

# cat_md ----
cat_md = function(
  files_md = setdiff(list.files(getwd(), glob2rx('*.md')), out_md),
  out_md  = '_all_.md'){
  
  if (file.exists(out_md)) unlink(out_md)
  
  cat('---\n', 'title: ', title, '\n---\n\n', sep='', file=out_md, append=T)
  
  for (md in files_md){
    cat(paste(c(readLines(md),'',''), collapse='\n'), file=out_md, append=T)
  }
}