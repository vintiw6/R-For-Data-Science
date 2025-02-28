# Strings
hola <- "HOLA AMIGO"
hola

# it does not count the characters inside the string instead it counts the no. of distinct strings
length(hola)
holaa <- c("Hola Amigos","Hello friends")
length(holaa)

# to get no. of characters we use 'nchar' function
nchar(hola)

# creation of vector using basic data type
temp1 <- character(10)
length(temp1)
temp


# comparison in string
"hello" == "hello  "
"hello" == "aello"

# by the above 2 example we get to know that we just compare them by characters instead of the string length
# in R uppercase letters are considered greater than lowercase letters
"A" > "a"
"a" > "B"

# R stores the priority as in a > A > b > B > c > C ........... z > Z
"z" > "V"


# to Concatenate 2 or more strings we have 2 functions 'cat' and 'paste'
temp2 <- cat("hello"," Nomaskar", " Oui")

# paste is used when we want to save the the string in memory
temp3 <- cat("Hola","Hello")


# separation is another function which fills the void between the diff strings 'sep' is used to call the function
temp2 <- cat("hello","Nomaskar", "Oui", sep="@")

# we cant use ',' as a separator as it manages to break the string hence we use '|' to show the same thing
temp2 <- cat("hello","Nomaskar", "Oui", sep="|")


# Escape sequences 
"\n" # new line
"\t" # horizontal tab
"\b" # to delete the last letter
"\\" # to use \ in the string
"\"" # to use " in a string


cat("hello \n How are you")

# paste directly prints out the same as the given string
paste("hello \n How are you")


# Sub-strings and Matching
oi <- "This is a character string!"
substr(x=oi,start = 21 , stop =  28)

# Replacing the part of the string
substr(x=oi,start = 21 , stop =  26) <- "apples"
oi
# in case when the given string is shorter than the original string then it just replaces the values as the given rest of remaining will be same
substr(x=oi,start = 21 , stop =  26) <- "dapp"
oi
# in case of replacement string is larger than original string then it can only run up to the given string constraint
substr(x=oi,start = 21 , stop =  26) <- "dapples"
oi


# sub() and gsub() function
text <- "apple banana apple orange"
sub("apple", "grape", text) # Replaces only the first occurrence of a matching pattern in a string.

gsub("apple", "grape", text) # Replaces all occurrences of a matching pattern in a string.


Input <- "Welcome to the 6th lecture today!!"
OutPut <- sub("today","fewday",Input)
OutPut


