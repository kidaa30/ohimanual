# ### make a plot to compare different commits within a scenario
# ## for some reason, the devtools package needs to be turned off for this to work 
detach("package:devtools", unload=TRUE)
source('../ohiprep/src/R/VisGlobal.R')
changePlot(repo="~/ohi-global", scenario="eez2013", commit="previous", fileSave="uv_pressure_update")

# looking within a goal:
scatterPlot(repo="~/ohi-global", scenario="eez2013", commit="previous", goal="CW", dim="score", fileSave="trash_update")
goalHistogram(scenario="eez2013", goal="CW", dim="score", fileSave="trash_update")




#### functions to visualize global scores within a scenario and commit.

changePlot <- function(csv_orig = 'scores_orig.csv',
                       csv_new = file_save, 
                       layer_changed,
                       fileSave){
  require(tools)
  require(dplyr)
  require(git2r)
  require(ggplot2)
  require(RColorBrewer)
  
# if(commit=="previous"){
#     commit2 = substring(commits(repository(repo))[[1]]@sha, 1, 7)
#   } else{
#      if (commit == "final_2014"){
#     commit2 = '4da6b4a'
#   } else {commit2 = commit}
#   }
#   path = paste0(scenario, '/scores.csv')

  data_combo <- read.csv(csv_orig) %>%
    select(goal, dimension, region_id, scores_old = score) %>%
  left_join(read.csv(csv_new) %>%
               dplyr::rename(scores_new = score), 
            by=c('goal', 'dimension', 'region_id')) %>%
  mutate(change = scores_new - scores_old)  
  
  ggplot(data_combo, aes(x=goal, y=change, color=dimension)) +
    geom_point(shape=19, size=1) +
    theme_bw() + 
    labs(title=(paste0('Score differences after modifying ', layer_changed)), y="Change in score", x="") +
    scale_x_discrete(limits = c("Index", "AO", "SPP", "BD", "HAB", "CP", "CS", "CW", "FIS", "FP", 
                              "MAR", "ECO", "LE", "LIV", "NP", "LSP", "SP", "ICO", "TR")) +
    scale_colour_brewer(palette="Dark2") +
    geom_jitter(position = position_jitter(width=0.2, height=0), shape=19, size=1)
  
  ggsave(paste0(basename(file_path_sans_ext(fig_save)), '_changePlot.png'), width=8, height=5)
#   write.csv(data_combo, file.path(repo, 'figures/DataCheck', paste0(fileSave, "_diff_data_", Sys.Date(), '.csv')), row.names=FALSE)
}


scatterPlot <- function(csv_orig = 'scores_orig.csv',
                       csv_new = file_save, 
                       layer_changed,
                       fileSave, 
                       goal, dim="score"){
   
  require(git2r)
  require(ggplot2)
  require(RColorBrewer)
  
#   if(commit=="previous"){
#     commit2 = substring(commits(repository(repo))[[1]]@sha, 1, 7)
#   } else{
#     if (commit == "final_2014"){
#       commit2 = '4da6b4a'
#     } else {commit2 = commit}
#   }
#   path = paste0(scenario, '/scores.csv')
  
  names <- read.csv("layers/rgn_labels.csv") %>%
    filter(type=="eez") %>%
    select(region_id=rgn_id, label)
  
criteria <- ~dimension == dim

data_combo <- read.csv(csv_orig) %>%
    select(goal, dimension, region_id, scores_old = score) %>%
  left_join(read.csv(csv_new) %>%
               dplyr::rename(scores_new = score), 
            by=c('goal', 'dimension', 'region_id')) %>%
  mutate(change = scores_new - scores_old)  %>%
    filter_(criteria) %>%
    group_by(goal) %>% 
    mutate(mean = mean(change, na.rm=TRUE),
           sd =  sd(change, na.rm=TRUE)) %>%
    ungroup() %>%
    mutate(z_score = (change-mean)/sd) %>%
    mutate(z_greater_1 = ifelse(abs(z_score) > 1, "yes", "no")) %>%
    left_join(names) %>%
    filter(region_id != 0) %>%
    mutate(plotLabel = ifelse(z_greater_1=="yes", as.character(label), NA))
  
  data_combo <- data_combo[data_combo$goal==goal,]  

  ggplot(data_combo, aes(x=scores_old, y=score)) +
    geom_point(shape=19) +
    theme_bw() + 
    labs(title=paste(scenario, goal, dim, commit, sep=": "), y="New scores", x="Scores from 2015 analysis") +
    geom_abline(slope=1, intercept=0, color="red") +
    geom_text(aes(label=plotLabel), vjust=1.5, size=3)
    
    ggsave(file.path(repo, 'figures/DataCheck', paste0(fileSave, "_scatterPlot_", Sys.Date(), '.png')), width=10, height=8)
}


# goalHistogram <- function(scenario="eez2013", goal, dim="score", fileSave){
#   #   scenario <- "eez2013"  ## options: 'eez2012', 'eez2013', 'eez2014', 'eez2015'
#   #   fileSave <- 'NP_function'
#   #   goal <- 'NP'  
#   require(ggplot2)
#   require(RColorBrewer)
#   path = paste0(scenario, '/scores.csv')
#   
#   criteria  <- ~dimension == dim
#   
#   data_combo <- read.csv(path) %>%
#     filter_(criteria)
#   
#   data_combo <- data_combo[data_combo$goal == goal, ]
#            
#   
#   ggplot(data_combo, aes(x=score)) +
#     geom_histogram(color='black', fill="gray") +
#     theme_bw() + 
#     labs(title=paste(scenario, goal, "2015 analysis", sep=": "), y="Regions", x="Scores") 
#   
#   ggsave(file.path('figures/DataCheck', paste0(fileSave, "_histPlot_", Sys.Date(), '.png')), width=8, height=5)
# }