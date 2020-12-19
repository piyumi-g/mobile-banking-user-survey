# Pie Chart with Percentages for age groups

# importing data from csv
data1 <- read.csv("Banking Mobile App Users Survey - Combined.csv", header = TRUE)

mytable <- table(data1$age.group)
lbls <- paste(names(mytable), "\n", mytable, sep="")
pie(mytable, labels = lbls,
    main="Pie Chart of Age Groups\n (with sample sizes)")


# Bar Chart with Percentages for education

mytable2 <- table(data1$education)

barplot(mytable2, main="Educational Level",
        xlab="level of education")


# Pie Chart with Percentages for salary ranges

mytable3 <- table(data1$income)

lbls3 <- paste(names(mytable3), "\n", mytable3, sep="")
pie(mytable3, labels = lbls3,
    main="Pie Chart of Salary ranges\n (with sample sizes)")




UI_table <- table(data1$application.interface)

chisq.test(UI_table, correct=FALSE)
chisq.test()


UI_table2 <- table(data1$gender, data1$application.interface)

chisq.test(UI_table2, correct=FALSE)
chisq.test()