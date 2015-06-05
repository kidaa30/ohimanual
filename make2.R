# Ocean Health Index, Santa Barbara, CA
# last updated: 05 May 2015

##### Summary: the goal of this code is to combine the text in the `conceptual` folder into one markdown document for reading and editing purposes.

# Step A. Loading Libraries, Directories, Functions:
# Note: this code is mainly copied form `make.R` but changed all instances of variables to "v2" just in case.

# load libraries ----
library(knitr) # install.packages("rmarkdown")
library(rmarkdown)
library(stringr)

# set working directory 
getwd()
here <- "./conceptual" #creating variable for working directory - can change this
setwd('./conceptual')
getwd() #double checking

# set variables ----
titlev2 = 'The Ocean Health Index Conceptual Guide'

# helper functions ----
cat_mdv2 = function(
  files_mdv2 = setdiff(list.files(getwd(), glob2rx('*.md')), out_mdv2),
  out_mdv2  = '_all_.mdv2'){
  
  if (file.exists(out_mdv2)) unlink(out_mdv2)
  
  cat('---\n', 'title: ', titlev2, '\n---\n\n', sep='', file=out_mdv2, append=T)
  
  for (md in files_mdv2){
    cat(paste(c(readLines(md),'',''), collapse='\n'), file=out_mdv2, append=T)
  }
}


# Step B. This is the order of contents. Change it as needed, noting that these files must be in this directory for the time being. If we want to string 'content' and 'conceptual' together, we'll have to change the wd's.
# note: to seam in pages from `content`, use the following format below:   '~/github/ohimanual/content/AO_practical.md',

in_mdv2 = c(
  'Phase_0.md',
  #'Need_For_and_Benefits_of_OHI.md', # --> See Phase_0
  #'Task_Timeline.md', # --> See Phase_0
  'Phase_1.md',
  '1_What_is_OHI.md',
  '1_Understand_Scales_of_Assessement.md',
  '1_WebApp_intro.md',
  '1_Determine_the_Need_and_Purpose.md',
  '1_Why_ten_goals.md',
  '1_How_Are_Goals_Weighted.md',  
  '1_How_Is_The_Index_Calculated.md',
  '1_Reference_Points.md',
  '1_Understanding_Status.md',
  '1_Understanding_Trend.md',
  '1_Understanding_Pressures.md',
  '1_Understanding_Resilience.md',
  '1_Pres_Resi_interactions.md',
  '1_FP_Philosophy.md',
  '1_AO_Philosophy.md',
  '1_NP_Philosophy.md',
  '1_CS_Philosophy.md',
  '1_CP_Philosophy.md',
  '1_LE_Philosophy.md',
  '1_TR_Philosophy.md',
  '1_SP_Philosophy.md',
  '1_CW_Philosophy.md',
  '1_BD_Philosophy.md',
  'Phase_2.md',                         ## removed 'Understand_Philosophy_of_Index.md' 5-18-15
  '2_Understand_Requirements_for_Assessment.md',
  '2_Funding.md',
  '2_Assembling_team.md', # --> Developing; fix
  '2_Data_Requirements.md',
  '2_Planning_and_Partnering.md',
  '2_Who_Should_Be_Involved.md',
  '2_Conducting_a_Stakeholder_Analysis.md',
  '2_Introducing_Concept_to_Stakeholders.md',
  '2_Considerations_for_Joint_Planning.md',
  '2_Vision.md',
  '2_Objectives.md',
  '2_Spatial_Scale.md',
  '2_Strategy.md',
  '2_Costs_and_Financial_Planning.md',
  '2_Adaptive_Management.md',
  'Phase_3.md',
    # ~/github/ohimanual/content/FP_practical.md', # NOTE: un-comment these sections to loop in the Manual as Phase 3 (see Make.R)
  'Phase_4.md',
  '4_Outreach_and_Communications.md',
  '4_Communication_and_Outreach_Strategy.md',
  '4_Disseminating_Findings.md',
  '4_Communicate_Results_with_Partners.md',
  '4_Develop_and_Implement_Policies_and_Management_Interventions_that_Respond_to_the_Priorities.md',
  '4_Monitor_and_Re-evaluate_to_Determine_Policy_Effectiveness_and_Set_New_Priorities.md',
  '0_glossary.md')

out_mdv2 = 'ohi-concguide.md' # <- this is the output "final" file.

#### testing ground
# playing around with a way to autmate this....  failed: toc <- list.files('.')
#ch1 <- "Adaptive_Management.md"
#ch12 <- c("Adaptive_Management.md","AO_Philosophy.md", recurusive = TRUE)
#knit("Adaptive_Management.md", "output.md", text = NULL)  #test1
#knit(ch1, "output2.md", text = NULL) #test2 works
#knit("Adaptive_Management.md","AO_Philosophy.md", "output3.md", text = TRUE) #test3 breask



# Step C. This is where the output gets strung together, here into both .md and .html for convenience.

cat_mdv2(in_mdv2, out_mdv2)               # use own md ordered file listing , output to ohi-manual.md
pfx = tools::file_path_sans_ext(out_mdv2)

# This is the final step to output to either a .md file for now. Next step: use the complex "render_html" etc. for website styling...
knit(out_mdv2, "ohi-concguide.md", text = NULL)

knit2html('ohi-concguide.md', 'ohi-concguide.html') # update: this is easier to read, IMHO, so I'll render this output to html too while we're at it...


# render pdf ----
render(
  out_mdv2,
  pdf_document(
    toc = T, toc_depth = 4, number_sections = T,
    fig_width = 6.5, fig_height = 4.5, fig_crop = TRUE,
    fig_caption = T, highlight = "default", template = "default",
    keep_tex = F, latex_engine = "xelatex",
    includes = NULL, pandoc_args = NULL),
  clean=T, quiet=F,
  output_file = paste0(pfx, '.pdf'))

# Step D. Continue editing!
# test