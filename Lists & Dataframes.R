# Lists (Heterogeneous Vectors)
# Create list: Can hold different data types.
x <- list(1, "a", TRUE, 1 + 4i)
x
# Create empty list: Creates a list of specified length.
x <- vector("list", length = 5)
x

# Length of List
# Get list length: Returns number of elements.
my_list <- list(name = "John", age = 25, salary = 3000)
length(my_list)

# List Slicing vs. Member Reference
# [ ]: Extracts elements; returns a list.
my_list[1]
# [[ ]]: Extracts element's value.
my_list[[1]]
my_list[["name"]]

# List example
foo <- list(matrix(data = 1:4, nrow = 2, ncol = 2), c(TRUE, FALSE, TRUE, TRUE), "hello")
foo[[c(2, 3)]] # Extract 3rd element of 2nd component.
bar <- foo[c(2, 3)] # Create sublist.
bar

# Naming List Components
# Name list elements: Adds names to list elements.
foo <- list(matrix(data = 1:4, nrow = 2, ncol = 2), c(TRUE, FALSE, TRUE, TRUE), "hello")
names(foo) <- c("mymatrix", "mylogicals", "mystring")
foo
foo$mymatrix # Access by name.
foo[[1]]    # Access by index.

# Nesting Lists
# Create nested list: List containing lists.
baz <- list(tom = c(foo[[2]], TRUE, TRUE, TRUE, FALSE), sam = "g'day mate", harry = foo$mymatrix * 2)
baz$bobby <- foo # Add list as element.
baz

baz$bobby$mylogicals[1:3] # Access nested elements.
baz[[4]][[2]][1:3]       # Access nested elements.
baz[[4]]$mylogicals[1:3] # Access nested elements.

# Data Frames
# Create data frame: Table-like structure.
mydata <- data.frame(person = c("Peter", "Lois", "Meg", "Chris", "Stewie"),
                     age = c(42, 40, 17, 14, 1),
                     gender = factor(c("M", "F", "F", "M", "M")))
mydata

# Extract data.
mydata[2, 2]
mydata[3:5, 3]
mydata$age
mydata$age[2]

# Data frame size.
nrow(mydata) # Get row count.
ncol(mydata) # Get column count.
dim(mydata)  # Get dimensions.

# Character vectors.
mydata$person # Display character vector.

# Add row.
newrecord <- data.frame(person = "Brian", age = 7,
                        gender = factor("M", levels = levels(mydata$gender)))
newrecord
mydata <- rbind(mydata, newrecord) # Add row to data frame.
mydata

# Add column.
funny <- c("High", "High", "Low", "Med", "High", "Med")
funny <- factor(x = funny, levels = c("Low", "Med", "High"))
funny
mydata <- cbind(mydata, funny) # Add column to data frame.
mydata

# Extend data frame.
mydata$age.mon <- mydata$age * 12 # Create new column.
mydata

# Logical Subsets
# Create logical vector.
mydata$gender == "M"
mydata[mydata$gender == "M", ] # Subset rows.
mydata[mydata$gender == "M", -3] # Subset rows, drop column.
mydata[mydata$gender == "M",
       c("person", "age", "funny", "age.mon")] # Subset rows, select columns.