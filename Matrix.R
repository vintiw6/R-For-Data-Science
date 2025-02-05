m <- matrix(data=c(-3, 2, 9, 0.17), nrow = 2, ncol = 2)
# creation of a matrix
print(m)
print(m[0][0])

# for the documentation  about Matrix
?matrix


# to fill it row wise we use byrow = True here
u <- matrix(data=c(-3, 2, 9, 5), nrow = 2, ncol = 2, byrow = TRUE)
print(u)

print(m*u)

# to find dimension of a matrix we use dim fn
dim(m)
dim(u)

# to get either row or column we use nrow, ncol fn
nrow(m)
ncol(m)


# Creating matrix using vector




# using cbind() and rbind() fn to bind together rows and columns
a <- 1:3
b <- 10:12

cbind(a,b)
rbind(a,b)


s <- matrix(1:15, 3, 5)
print(s)


# to select either just a row or column it can be written as
s(1,)  # for rows
s(,1)  # for columns

s[2,c(2,3,4)]

# to find diagonal of matrix
v <- matrix(1:25, nrow = 5, byrow = TRUE)

diag(v) # function to find it directly


i=1:5
j=1:5

cbind(i,j)
v[cbind(i,j)]

# for secondary diagonal
k=5:1
l=5:1

cbind(k,l)
v[cbind(k,l)]


# transpose function
mat <- matrix(1:9,3,3)
t(mat)

# to get identity matrix
matr <- matrix(c(0),3,3)
diag(matr) <- 1
matr


# to get scalar matrix we directly multiply 
matr * 2

# addition of matrix
dim(m)==dim(matr)

# in case both true we directly add
mat + matr

# to multiply 2 matrix we check there compatibility
q1 <- matrix(1:9,3,3)
q1
q2 <- matrix(1:6,3,2)
q2
q3 <- matrix(1:9,3,3)
q3
q1 %*% q2
q1 %*% q3


# matrix inversion todo????


A <- matrix(data=c(1,2,7))
A
B <- matrix(data=c(3,4,8))
B
c <- ((B*B^2)+(A*A^2)-100/3)^-1
c
