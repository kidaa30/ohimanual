#### functions to visualize scores comparing two input scores.csv files. 


comparePlot <- function(csv_orig = 'scores_orig.csv',
                        csv_new = 'scores_1.csv', 
                        layer_changed = 'ao_need',
                        fig_save = 'scores_1_changePlot.png'){
  require(tools)
  require(dplyr)
  require(git2r)
  require(ggplot2)
  require(RColorBrewer)
  
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
  
  ggsave(fig_save, width=8, height=5)
  
}


scatterPlot <- function(csv_orig = 'scores_orig.csv',
                        csv_new = 'scores_1.csv', 
                        layer_changed = 'ao_need',
                        fig_save = 'scores_1_scatterPlot.png', 
                        goal, dim="score"){
  
  require(git2r)
  require(ggplot2)
  require(RColorBrewer)
   
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
    left_join(names, by='region_id') %>%
    filter(region_id != 0) %>%
    mutate(plotLabel = ifelse(z_greater_1=="yes", as.character(label), NA)) %>%
    filter(goal == goal)
  
  ggplot(data_combo, aes(x=scores_old, y=scores_old)) +
    geom_point(shape=19) +
    theme_bw() + 
    labs(title=sprintf('Score differences for %s', goal), y="Modified scores", x="Original scores") +
    geom_abline(slope=1, intercept=0, color="red") +
    geom_text(aes(label=plotLabel), vjust=1.5, size=3)
  
  ggsave(fig_save, width=10, height=8)
}
