# Reading Line by Line
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
sep()

as.numeric(df$exp)
df$exp[df$exp == "0-5"] <- 2.5
df$exp <- as.numeric(df$exp)

# clean lang
df$lang <- gsub("[*]", "", df$lang)
df$lang <- tolower(df$lang)

# Task 1: how can we make a vector from df$lang that contains each language mentioned as a single element


# Task 2:
# wordcloud


