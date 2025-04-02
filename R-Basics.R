# Assignment Operator
x <- 1
print(x)
x

msg <- "hello world!!"
print(msg)

# Evaluation
x <- 5 # nothing printed
x # auto-printing
print(x) # explicit printing

# Creating a sequence
x <- 11:30
print(x)


# R Objects
char_vec <- c("a", "b", "c")
num_vec <- c(1.2, 3.4, 5.6)
int_vec <- 1:10
complex_vec <- c(1+2i, 3-4i)
logical_vec <- c(TRUE, FALSE, TRUE)

# Checking object types
typeof(1)
is.integer(1)
typeof(1L)
is.double(1)
class(1)
class(1L)

# Special numbers
is.infinite(Inf)
is.nan(NaN)
is.nan(0/0)

# Creating Vectors
x <- c(0.5, 0.6)  # numeric
x <- c(TRUE, FALSE)  # logical
x <- c(T, F)  # logical
x <- c("a", "b", "c")  # character
x <- 9:29  # integer
x <- c(1+0i, 2+4i)  # complex

# Explicit Coercion
x <- 0:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)

# Creating empty vectors
numeric_vector <- vector("numeric", length = 5)
logical_vector <- vector("logical", length = 3)

# Generating Sequences
sequence <- seq(from = 1, to = 10, by = 2)
numbers <- 1:5

sequence <- seq(from = 4 ,to = -12, by = -0.4)
print(sequence)

# Replication Functions
repeated_numbers <- rep(1, times = 5)
repeated_characters <- rep(c("a", "b"), times = 3)
repeated_numbers <- rep(1:3, each = 2)

# Length of a Vector
numbers <- c(4, 1, 8, 3)
vec_length <- length(numbers)
print(vec_length)

# Sorting a Vector
sorted_numbers <- sort(numbers)
desc_sorted_numbers <- sort(numbers, decreasing = TRUE)

# Extracting elements
first_last <- c(vec_d[1], vec_d[length(vec_d)])
vec_c <- vec_d[-c(1, length(vec_d))]
reconstructed_vec_d <- c(first_last[1], vec_c, first_last[2])
vec_d_sorted <- sort(vec_d)
vec_d_reversed <- rev(vec_d_sorted)
identical(vec_d_reversed, sort(vec_d_sorted, decreasing = TRUE))

# Vector transformations
mod_vec_c <- c(rep(vec_c[3], 3), rep(vec_c[6], 4), vec_c[length(vec_c)])
new_vec_e <- vec_d_sorted
new_vec_e[c(1, 5:7, length(new_vec_e))] <- 99:95

# Temperature conversion
F_temps <- c(45, 77, 20, 19, 101, 120, 212)
C_temps <- 5/9 * (F_temps - 32)

# Vector operations
v1 <- c(2,4,6)
v2 <- c(1,2)
result_vec <- rep(v1, each = length(v2)) * rep(v2, times = length(v1))

# Overwriting middle elements
result_vec[3:6] <- rep(c(-0.1, -100), times = 2)

a <- sequence
a <- rev(a)
print(a)

# Display results
print(seq_a)
print(seq_b)
print(sorted_rep_vector)
print(vec_d)
print(vec_d_length)
print(mod_vec_c)
print(new_vec_e)
print(C_temps)
print(result_vec)
