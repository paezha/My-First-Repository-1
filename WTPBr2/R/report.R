#' This function is create to make easy to people get the report of some variables of the Survey Data
#'
#' In the Paper (put the link) Section 4, we summarize some characteristics of our survey data.
#' This function can be use to get a quick table of the number os respondents in each asnwer of the questionnarie. With the help of metadata, just enter the name of the desired variable and get the table.
#'
#' @param y The name of the column in the Survey Data. See the metadata for the description (data_survey folder).
#' @return The distribution of the respondents in each asnwer.
#' @examples
#' report("DSE03") - returns the how much respondents we have by age group
#' report("HAB01") - returns the number of respondents by travel frequency - Table 5 in the Paper
#' report ("DSE07") - returns the number of respondents by family income - Table 4 in the Paper


report <- function(y) {
  colnames(survey)[which(names(survey)==y)]<-"aux_1"
  table(survey$aux_1)
}
