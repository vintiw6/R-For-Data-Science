# Factors are R's most natural way of representing data points that fit only
# Factors are typically created from numeric or a character vector


# Note: You can't fill matrices or 3-D arrays using factors values; factors can only take the form of vectors


firstname <- c("Liz","Jolene","Susan","Boris","Rochelle","Tim","Simon","Amy")
gender.num <- c(0,0,0,1,0,1,1,0) 
gender.char <- c("female","female","female","male","female","male","male","female")

# Creation of a Factor
gender.num.fac <- factor(x=gender.num)
gender.num.fac

# length functions works the same as vectors
length(gender.num)
length(gender.num.fac)

gender.char.fac <- factor(x=gender.char)
gender.char.fac


intvec <- c(1,0,1,2,3,5,2,3,2)
factor(x=intvec)


# factor automatically assign a value to each unique string hence solving the problem of same strings having different values
days <- c("Mon","Tue","Wed","Thus","Fri","Sat","Sun","Mon","Wed")
factor(x=days)

# we can create factor out of logical values as well
log <- c(TRUE,FALSE,TRUE)
factor(x=log)


# Extracting the levels
levels(x=gender.num.fac)
levels(factor(x=days))


# Relabel 
levels(x=gender.num.fac) <- c("1","2")
levels(x=gender.num.fac)
gender.num.fac
# we can also relabel factors using levels


# Subsets of a factor
gender.num.fac[2:5]
gender.char.fac[c(1:3,5,8)]

# Logical operation
intvec == 2
length(which(intvec==2))


# 
months <- c("jan","Feb","Mar","Apr","May","Jun","Jul")
ms <- c("jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")
months.fac <- factor(x=months,levels=ms,ordered = TRUE)
months.fac


# Combining and Cutting
new.values <- factor(x=c("Oct","Feb","Feb"),levels=levels(months.fac),ordered = TRUE)
new.values
new <- factor(c(months.fac,new.values))
new

levels(months.fac)[c(months.fac,new.values)]
