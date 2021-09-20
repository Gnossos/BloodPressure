# plot_bpts - Plot blood pressure time series
 # See:
 #       Nate Teetor's "Writing efficient and streamlined R code with help from the new rlang package"
 #            (http://zevross.com/blog/2018/09/11/writing-efficient-and-streamlined-r-code-with-help-from-the-new-rlang-package/), 
 #       Sharon Machlis' "How to write your own ggplot2 functions in R" (https://www.infoworld.com/article/3410295/how-to-write-your-own-ggplot2-functions-in-r.html),
 # and especially
 #       Econometrics and free software in R bloggers' "Curly-curly, the successor of Bang-Bang"
  
  # Colors for blood pressure levels
  bp_colors <- c(Low = "lightblue",
                 Normal = "#39ba25",
                 Elevated = "#e3e029",
                 `Stage 1` = "#ef8c00",
                 `Stage 2` = "darkred",
                 Crisis = "red")
  
  # Ranges for the different kinds of reading
  bp_ranges <- tribble(
    ~TYPE,     ~LABEL,      ~CATEGORY,   ~LOW,   ~HIGH,
    #-----|-------------|-------------|-------|--------
    "SBP",  "Systolic",        "Low",     50,      90,
    "SBP",  "Systolic",     "Normal",     90,     120,
    "SBP",  "Systolic",   "Elevated",    120,     129,
    "SBP",  "Systolic",    "Stage 1",    130,     139,
    "SBP",  "Systolic",    "Stage 2",    140,     179,
    "SBP",  "Systolic",     "Crisis",    180,     200,
    # See https://www.scienceabc.com/eyeopeners/how-high-can-a-blood-pressure-go.html
    "DBP", "Diastolic",        "Low",      0,      60,
    "DBP", "Diastolic",     "Normal",     60,      80,
    "DBP", "Diastolic",   "Elevated",     80,      80,
    "DBP", "Diastolic",    "Stage 1",     80,      89,
    "DBP", "Diastolic",    "Stage 2",     90,     119,
    "DBP", "Diastolic",     "Crisis",    120,     200
    # See https://www.scienceabc.com/eyeopeners/how-high-can-a-blood-pressure-go.html
  )
  
# TODO: Add RHR table
  
# HERE'S WHERE I HAVE TO DO THINGS with rlang package.
  
  library(rlang)
  bp_tsplot <- function(timeseries, column_name) {
    timeseries %>%
      ggplot(aes({{ timeseries$DATE }} , {{ column_name }} ))
  }
  
  p <- bp_tsplot(bp_tsbl, "SBP")
  
  
  
  
