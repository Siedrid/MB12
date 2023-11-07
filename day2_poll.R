<<<<<<< HEAD
# Reading Line by Line -----
'lecture from 31.10.'

=======
# Reading Line by Line
>>>>>>> fc571a2981fd9d7c7c3badfc5df2da31f6c4b63c
poll <- readLines("poll.md")
str(poll)
poll[1]
poll <- poll[!poll == ""]

df <- as.data.frame(matrix(poll, ncol=4, byrow = T))

colnames(df) <- c("Name", "exp", "lang", "os")
df$Name <- gsub("#", "", df$Name)
df$Name <-trimws(df$Name)

df$exp <- gsub("[*]", "", df$exp)
df$exp <- trimws(df$exp)

df$os <- gsub("[*]", "", df$os)
df$os <- trimws(df$os)

df$lang <- gsub("[*]", "", df$lang)
<<<<<<< HEAD
=======
sep()
>>>>>>> fc571a2981fd9d7c7c3badfc5df2da31f6c4b63c

as.numeric(df$exp)
df$exp[df$exp == "0-5"] <- 2.5
df$exp <- as.numeric(df$exp)

# clean lang
df$lang <- gsub("[*]", "", df$lang)
df$lang <- tolower(df$lang)

# Task 1: how can we make a vector from df$lang that contains each language mentioned as a single element
<<<<<<< HEAD
df$lang
lang <- gsub(" ","", unlist(strsplit(df$lang, ", ")))
lang_count <- table(lang)
names(lang_count)
=======

>>>>>>> fc571a2981fd9d7c7c3badfc5df2da31f6c4b63c

# Task 2:
# wordcloud

<<<<<<< HEAD
install.packages("wordcloud")
library(wordcloud)
wordcloud::wordcloud(words = names(lang_count), freq = lang_count, min.freq = 1)


# Matrixes etc -----
'Indexing dataframes etc.'

fruits <- matrix(c(1,2,1,3,1,1,3,1,2), ncol = 3)
fruits[4] # single brackets return values in order of columns
fruits[[2]]
as.data.frame(fruits)[[2]]

# Working with Datasets -----

energy_prod <- read_csv("data/day2_data_energy_prod_EU_2020-08-03_2020-08-09.csv")
names(energy_prod)
head(energy_prod)
summary(energy_prod)
unique(energy_prod$ProductionTypeName)

plot(energy_prod$DateTime, energy_prod$ActualConsumption)

boxplot(energy_prod$DateTime, energy_prod$ActualConsumption)
barplot(energy_prod$DateTime, energy_prod$ActualConsumption)
hist

library(ggplot2)
# Clean data

energy_prod <- energy_prod[!energy_prod$ActualGenerationOutput > energy_prod$InstalledGenCapacity *4, ]
nrow(energy_prod)

ggplot(data = energy_prod, aes(x = ProductionTypeName)) +
  geom_bar()

g <- ggplot(data = energy_prod, aes(x = InstalledGenCapacity, y=ActualGenerationOutput))
g + geom_point()

# does this work?

# cool i think it works now
