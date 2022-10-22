## creating a new "blog post"

getwd()

##################
##################

date <- "2020_05_10" # in YYYY_MM_DD format

name <- "landfire_batch" # use _ as space

#################
#################


dir.create(paste0("./_posts/", date, "_", name))

if (dir.exists(paste0("./_posts/", date, "_", name)) == TRUE) {
  dir.create(paste0("./_posts/", date, "_", name, "/", name, "_files"))
} else {stop("Directory not created")}

if (dir.exists(paste0("./_posts/", date, "_", name)) == TRUE) {
  file.copy(from = "./blog_template.Rmd", to = paste0("./_posts/", date, "_", name, "/", name, ".Rmd"))
} else {stop("Rmd not created")}


