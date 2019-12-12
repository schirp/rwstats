#' @name wordMiner.previous
#' @title Occurrence and frequency of the previous word
#'
#' @description This is a function that lists the previous word appearing frequency
#' by a given chinese character based on real world
#' chinese character frequency Statistics table.
#' @param candidateWord A single Chinese character
#' @param topN The number of raws of output dataframe
#' @return A dataframe containing the previous word and its occurrence and frequency
#' @export
#' @examples
#' \dontrun{
#' wordMiner.previous("知")
#' wordMiner.previous("有", 20)
#' }
wordMiner.previous <- function(candidateWord, topN = 10) {
  if(length(strsplit(candidateWord, '')[[1]]) != 1) {
    warning("Input must be single Chinese character.")
  } else {
    tc <- twoChar
    temp_df <- do.call(rbind,
                       sapply(as.character(tc$character),
                              FUN = function(x) strsplit(x,"")))

    for(j in 1:2) {
      tc[,LETTERS[j]]<- temp_df[,j]
    }

    tcCandidateTable <- tc[tc$B == candidateWord,]
    tcCandidateTable <- tcCandidateTable[order(tcCandidateTable$freq, decreasing = T),]
    tcCandidateTable$Freq <- with(tcCandidateTable, freq/sum(tcCandidateTable$freq))
    rownames(tcCandidateTable) <- NULL

    output <- tcCandidateTable[c("character", "Freq")]
    colnames(output) <- c("Target Word", "Occurrence Freq")

    output <- output[which(is.na(output[1:topN,]$`Target Word`) ==F),]

    if (topN <= length(output$`Target Word`)) {
      return(output)
    } else {
      warning("list does not reach the specified length. \n")
      return(output)
    }
  }
}
