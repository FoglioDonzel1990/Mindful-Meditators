#1
#Setting up the environment
library(tidyverse)

#2
#Creating a data frame
mindful_df <- data.frame(ID = c(1, 2, 3, 4, 5, 6, 7, 8),
                         Name = c("Rachel", "Adam", "Joshua", "Tiara", "Andrew", "Adriana", "Liz", "Olivia"),
                         Gender = c("F", "M", "M", "F", "M", "F", "F", "F"),
                         Age = c(27, 48, 55, 29, 41, 25, 59, 32))

#3
#Viewing the data
head(mindful_df)

#4
#Calculating the average age of the group
mean(mindful_df$Age)

#5
#Displaying the number of males and females
table(mindful_df$Gender)

#6
#Calculating the median age of the group
median(mindful_df$Age)

#7
#Creating a graph of the ages
ggplot(data = mindful_df, aes(x = Age)) +
  geom_histogram(bins = 7, fill = "dark blue")

#8
#Creating a summary report
summary(mindful_df)

#9
#Adding a new variable to the data frame
mindful_df$Experience <- c("Beginner", "Intermediate", "Intermediate", "Advanced", "Beginner", "Intermediate", "Advanced", "Beginner")

#10
#Adding a new observation to the data frame
new_obs <- data.frame(ID = 9,
                      Name = "John",
                      Gender = "M",
                      Age = 42,
                      Experience = "Intermediate")
mindful_df <- rbind(mindful_df, new_obs)

#11
#Creating a graphical representation of the data
ggplot(mindful_df, aes(x = Experience, fill = Gender)) +
  geom_bar() +
  theme(legend.position = "top")

#12
#Creating a new variable
mindful_df$Attendance <- c(10, 12, 8, 15, 9, 11, 10, 11, 9)

#13
#Creating a boxplot of the attendance
ggplot(mindful_df, aes(x = Experience, y = Attendance)) +
  geom_boxplot(fill = "purple")

#14
#Listing the names of group members who attended more than 10 sessions
mindful_df %>% 
  filter(Attendance > 10) %>% 
  select(Name)

#15
#Calculating the overall average attendance
mean(mindful_df$Attendance)

#16
#Creating a scatterplot
ggplot(mindful_df, aes(x = Age, y = Attendance, color = Gender)) +
  geom_point()

#17
#Adding a title to the scatterplot
ggplot(mindful_df, aes(x = Age, y = Attendance, color = Gender)) +
  geom_point() +
  ggtitle("Attendance by Age and Gender")

#18
#Creating a line graph of the average attendance by age
ggplot(mindful_df, aes(x = Age)) +
  geom_line(aes(y = Attendance)) +
  geom_point()

#19
#Creating a factor variable
mindful_df$Satisfaction <- factor(c("Satisfied", "Satisfied", "Neutral", "Neutral",
                                    "Neutral", "Satisfied", "Satisfied", "Neutral", "Satisfied"))

#20
#Creating a bar graph of satisfaction by age
ggplot(mindful_df, aes(x = Age, fill = Satisfaction)) +
  geom_bar() +
  theme(legend.position = "top")