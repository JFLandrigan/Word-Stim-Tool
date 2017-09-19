WordStimNorm <- function(stim){
  #Package used to download the rData files from the github repository
  require(repmis)
  #Load syllable pakcage which contains the function used to compute the number of syllables
  require(syllable)
  
  #Set the words to all lower case for merges
  stim$Words <- tolower(as.character(stim$Words))
  
  #Get the number of letters in each word 
  stim$Number_Letters <- nchar(as.character(stim$Words))
  
  #Get the number of syllables
  stim$Number_Syllables <- compute_syllable_counts(stim$Words)
  
  #Get the number of phonemes, phoneme neighborhood count and orthographic neighborhood count
  #Load the clearpond data
  source_data("https://github.com/JFLandrigan/Word-Stim-Tool/blob/master/clearpond.rdata?raw=True")
  #Merge the dataframes to find the values
  stim <- merge(stim, clearpond, by.x = "Words", by.y = "Word", all.x = TRUE)
  
  #Get the frequency and zipf values
  #Load the subtelex data
  source_data("https://github.com/JFLandrigan/Word-Stim-Tool/blob/master/subtlex.Rdata?raw=True")
  #Merge the dataframes to find the values
  stim <- merge(stim, subtlex[,c("Word","Lg10WF", "Zipf")], by.x = "Words", by.y = "Word", all.x = TRUE)
  
  #Return the new dataframe
  return(stim)
}
