#Transforming Data
#separate, unite and mutate functions to transform our data in R.

id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")
employee<- data.frame(id, name, job_title)

print(employee)

#separate name into first and last name.

employee <- separate(employee , name , into=c('firstname' , 'lastname') , sep =' ')
print(employee)

#unite function to reunite the first and last name

employee<- unite(employee , 'name', firstname , lastname, sep=" ")
print(employee)


#mutate function to create the column
employee <- mutate(employee , salary = c(1:10))
print(employee)


