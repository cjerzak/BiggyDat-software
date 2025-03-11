########################################################
#### DOCUMENTATION GENERATION + INSTALL INSTRUCTIONS ###
########################################################

# Specify package name
package_name <- "ClassPackage"

# Generate documentation
{
  setwd(sprintf("~/Documents/%s-software",package_name))
  devtools::document(sprintf("./%s",package_name))
  try(file.remove(sprintf("./%s.pdf",package_name)),T)
  system(sprintf("R CMD Rd2pdf %s",package_name))
}

# Instructions for package installation + use
# Download package via github
devtools::install_github("cjerzak/ClassPackage-software/ClassPackage")
