# get rid of non-ASCII characters
oneChar <- read.csv2('data-raw/1f.csv', encoding = "UTF-8", header = T)
twoChar <- read.csv2('data-raw/2f.csv', encoding = "UTF-8", header = F)
threeChar <- read.csv2('data-raw/3f.csv', encoding = "UTF-8", header = F)
fourChar <- read.csv2('data-raw/4f.csv', encoding = "UTF-8", header = F)
fiveChar <- read.csv2('data-raw/5f.csv',encoding = "UTF-8", header = F)

colnames(twoChar) <- colnames(oneChar)
colnames(threeChar) <- colnames(oneChar)
colnames(fourChar) <- colnames(oneChar)
colnames(fiveChar) <- colnames(oneChar)

Encoding(levels(oneChar$character)) <- "UTF-8"
Encoding(levels(twoChar$character)) <- "UTF-8"
Encoding(levels(threeChar$character)) <- "UTF-8"
Encoding(levels(fourChar$character)) <- "UTF-8"
Encoding(levels(fiveChar$character)) <- "UTF-8"

usethis::use_data(oneChar, overwrite = TRUE)
usethis::use_data(twoChar, overwrite = TRUE)
usethis::use_data(threeChar,overwrite = TRUE)
usethis::use_data(fourChar, overwrite = TRUE)
usethis::use_data(fiveChar,overwrite = TRUE)
