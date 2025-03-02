gender <- c("female","male","male","male","female","female","female","male","male","male","male","female","male","female","female","female","male","male","male","male")
parties <- character(20)
parties[c(1,4,12,15,16,19)]<- "Labour"
parties[c(6,9,11)]<- "Greens"
parties[c(10,20)]<- "Others"
parties[c(2,3,5,7,8,13,14,17,18)] <- "Nationals"
factor(gender)


temp <- factor(x=parties,levels=c("Nationals","Others","Greens","Labour","Maori"))
temp

