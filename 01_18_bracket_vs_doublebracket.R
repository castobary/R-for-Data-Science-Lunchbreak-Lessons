# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Github: https://github.com/mnr
# More Learning: http://niemannross.com/link/mnratlil
# Description: Example file for [] vs [[]]

# Main idea: [] returns object. [[]] returns contents

# load some sample data
data("ChickWeight")

ChickWeight["Chick"][3] # fails. 
ChickWeight[["Chick"]][3] # succeeds. returns 3rd element of collection

length(ChickWeight["Chick"]) # this has one element
length(ChickWeight[["Chick"]]) # this has 578 elements

ChickWeight$Chick[3] #equivalent of ChickWeight[["Chick"]][3]

# another example
lotsaletters <- list(CAPS=LETTERS[1:10], lc=letters[1:10])
typeof(lotsaletters) # list of 2 objects
lotsaletters #just to take a look

# CAPS is an element of lotsaletters
lotsaletters[1] # $CAPS (an object)
lotsaletters$CAPS # lists contents of CAPS
lotsaletters[["CAPS"]] # identical to $CAPS

# structure of each
typeof(lotsaletters[1]) # CAPS object
typeof(lotsaletters$CAPS) #contents of CAPS object
typeof(lotsaletters[["CAPS"]]) # identical to str(lotsaletters$CAPS)

# contents of each
lotsaletters[1][3] # NULL because [1] returns an object - not the contents of an object
lotsaletters$CAPS[3] # "C" because $CAPS returns contents of CAPS object
lotsaletters[["CAPS"]][3] # "C" because [[]] returns contents
