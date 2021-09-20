# bpcolors - Returns a color scheme for blood pressure levels.
#
#  Currently only the scheme used by the bp package is implemented.

bp_colors <- function() {

# BP package's color scheme
  c(Low = "lightblue",
               Normal = "#39ba25",
               Elevated = "#e3e029",
               `Stage 1` = "#ef8c00",
               `Stage 2` = "darkred",
               Crisis = "red")
}