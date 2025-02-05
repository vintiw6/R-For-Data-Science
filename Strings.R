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


a <- cat("\\")
a
