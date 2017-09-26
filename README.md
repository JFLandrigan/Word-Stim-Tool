# Word-Stim-Tool

This is a simple function for norming word stimuli using R. The function reads in a dataframe and returns the dataframe with a number of measures appened to it. The measures include: 

* Number_Letters: the number of letters in the word.
* Number_Syllables: the number of syllables in the word. 
* Number_Phonemes: the number of phonemes in the word from the CLEARPOND databsase.
* Num_Ortho_Neighbors: the number of orthographic neighbors from the CLEARPOND databsase.
* Num_Phono_Neighbors: the number of phonological neighbors from the CLEARPOND databsase.
* Log10WF: log of the word frequency counts from the Subtlex database.
* ZipF: A normalized word frequency measure from Subtlex. 

Note that the function utilizes functions from the repmis package to download data from github and the syllable package to compute the number of syllables in the words.

CLEARPOND - http://clearpond.northwestern.edu/englishpond.php

Subtlex - http://subtlexus.lexique.org/
