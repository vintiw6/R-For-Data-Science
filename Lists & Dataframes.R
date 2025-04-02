# Lists (Heterogeneous Vectors)
# Create list: Can hold different data types. [cite: 2, 3]
x <- list(1, "a", TRUE, 1 + 4i)
x
# Create empty list: Creates a list of specified length. [cite: 4]
x <- vector("list", length = 5)
x

# Length of List
# Get list length: Returns number of elements. [cite: 5, 6]
my_list <- list(name = "John", age = 25, salary = 3000)
length(my_list)

# List Slicing vs. Member Reference
# [ ]: Extracts elements; returns a list. [cite: 7, 8, 9, 10, 11]
my_list[1]
# [[ ]]: Extracts element's value. [cite: 12, 13, 14, 15, 16]
my_list[[1]]
my_list[["name"]]

# List example
foo <- list(matrix(data = 1:4, nrow = 2, ncol = 2), c(TRUE, FALSE, TRUE, TRUE), "hello")
foo[[c(2, 3)]] # Extract 3rd element of 2nd component. [cite: 17, 18]
bar <- foo[c(2, 3)] # Create sublist. [cite: 18]
bar

# Naming List Components
# Name list elements: Adds names to list elements. [cite: 19, 20]
foo <- list(matrix(data = 1:4, nrow = 2, ncol = 2), c(TRUE, FALSE, TRUE, TRUE), "hello")
names(foo) <- c("mymatrix", "mylogicals", "mystring")
foo
foo$mymatrix # Access by name. [cite: 21, 22]
foo[[1]]    # Access by index. [cite: 22]

# Nesting Lists
# Create nested list: List containing lists. [cite: 23, 24, 25]
baz <- list(tom = c(foo[[2]], TRUE, TRUE, TRUE, FALSE), sam = "g'day mate", harry = foo$mymatrix * 2)
baz$bobby <- foo # Add list as element. [cite: 25]
baz

baz$bobby$mylogicals[1:3] # Access nested elements. [cite: 27, 28]
baz[[4]][[2]][1:3]       # Access nested elements. [cite: 27, 28]
baz[[4]]$mylogicals[1:3] # Access nested elements. [cite: 27, 28]

# Data Frames
# Create data frame: Table-like structure. [cite: 29, 30, 31, 32]
mydata <- data.frame(person = c("Peter", "Lois", "Meg", "Chris", "Stewie"),
                     age = c(42, 40, 17, 14, 1),
                     gender = factor(c("M", "F", "F", "M", "M")))
mydata

# Extract data. [cite: 34, 35, 36, 37]
mydata[2, 2]
mydata[3:5, 3]
mydata$age
mydata$age[2]

# Data frame size. [cite: 38, 39]
nrow(mydata) # Get row count. [cite: 39]
ncol(mydata) # Get column count. [cite: 39]
dim(mydata)  # Get dimensions. [cite: 39]

# Character vectors. [cite: 40, 41]
mydata$person # Display character vector. [cite: 41]

# Add row. [cite: 42, 43, 44, 45]
newrecord <- data.frame(person = "Brian", age = 7,
                        gender = factor("M", levels = levels(mydata$gender)))
newrecord
mydata <- rbind(mydata, newrecord) # Add row to data frame. [cite: 45]
mydata

# Add column. [cite: 46, 47]
funny <- c("High", "High", "Low", "Med", "High", "Med")
funny <- factor(x = funny, levels = c("Low", "Med", "High"))
funny
mydata <- cbind(mydata, funny) # Add column to data frame. [cite: 46]
mydata

# Extend data frame. [cite: 47]
mydata$age.mon <- mydata$age * 12 # Create new column. [cite: 47]
mydata

# Logical Subsets
# Create logical vector. [cite: 48, 49, 50, 51, 52, 53]
mydata$gender == "M"
mydata[mydata$gender == "M", ] # Subset rows. [cite: 51]
mydata[mydata$gender == "M", -3] # Subset rows, drop column. [cite: 52]
mydata[mydata$gender == "M",
       c("person", "age", "funny", "age.mon")] # Subset rows, select columns. [cite: 53]