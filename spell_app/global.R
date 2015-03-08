library(tm)

sorted_words = names(sort(table(strsplit(tolower(paste(readLines("http://www.norvig.com/big.txt"), collapse = " ")), "[^a-z]+")), decreasing = TRUE))
correct <- function(word) {
  c(sorted_words[ adist(word, sorted_words) <= min(adist(word, sorted_words), 2)], word)[1] }


correctSentence = function(sen) {
  words = unlist(strsplit(sen,' '))
  wordList = list()
  for(i in 1:length(words)){
    wordList[i] = correct(words[i])
  }
  return(paste(wordList))
}



#Ideas - bigram, 