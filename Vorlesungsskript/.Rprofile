# Use the R package environment maintained by the linked PDWP source project.
# renv determines its project from the working directory during activation, so
# activate it from _src and then return to this Quarto project's directory.
local({
  old_wd <- setwd("_src")
  on.exit(setwd(old_wd), add = TRUE)
  source(".Rprofile", local = FALSE)
})
