# Logical Values consists of TRUE and FALSE 

foo <- TRUE
bar <- FALSE

# Creation of a vector consisting of logical values
vec1 <- c(TRUE,FALSE,FALSE,TRUE,TRUE,FALSE,TRUE)
vec2 <- c(FALSE,TRUE,FALSE,TRUE,TRUE,FALSE,TRUE)
length(vec1)

# Creation of a matrix consisting of logical values
mat1 <- matrix(data=vec1,nrow=2,ncol=7)
mat2 <- matrix(data=vec2,nrow=2,ncol=7)
mat1


# Relational Operators
vec1 == vec2
vec1 != vec2

# It takes TRUE as 1 hence it says TRUE for when its compared with FALSE
vec1 > vec2
vec1 < vec2
vec1 <= vec2
vec2 >= vec2

# Matrix Comparison
mat1 == mat2


# ANY vs ALL

# any functions checks if the given vector has a any TRUE given if yes it returns TRUE
any(vec1)

# all functions checks if all the vector values are TRUE if yes it returns TRUE
all(vec1)


af <- c(FALSE,FALSE,FALSE,FALSE)
af 

any(af)
all(af)


# Multiple Comparison

vec1 & vec2 # "&" uses element wise
# for vector comparison we use "&"
  
vec1 && vec2 # "&&" does a single comparison at a time
# it throws an error because of the properties of "&&" to use it we take single values
foo && bar

vec1 | vec1 # "|" Used for OR function
foo || bar # "||" Used for single values and not to be used for vectors



# addition of logical values gives off integer values as it converts TRUE = 1 and FALSE = 0
add <- TRUE + TRUE
add

# Subset Extraction
A <- c (1,2,3,4,5,6,7,8,9)
B <- A[seq(1,9,2)]
B

# using logical values
temp <- 1:10
temp
ind <- c(TRUE,FALSE,TRUE,FALSE)

temp[ind]


# which() Function
which(vec1) # This tells us the indexes which are flagged TRUE
length(which(vec1)) # To check the length of the indexes



# Exp qn
# Given vector
v <- c(7,1,7,10,5,9,10,3,10,8)

# Logical OR
v <= 5 | v == 2
  










