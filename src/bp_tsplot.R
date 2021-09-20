# plot_bpts - Plot blood pressure time series
 # See:
 #       Nate Teetor's "Writing efficient and streamlined R code with help from the new rlang package"
 #            (http://zevross.com/blog/2018/09/11/writing-efficient-and-streamlined-r-code-with-help-from-the-new-rlang-package/), 
 #       Sharon Machlis' "How to write your own ggplot2 functions in R" (https://www.infoworld.com/article/3410295/how-to-write-your-own-ggplot2-functions-in-r.html),
 # and especially
 #       Econometrics and free software in R bloggers' "Curly-curly, the successor of Bang-Bang"
  

plot_bpts <- function(ts, cname  = "SBP") {
  library(rlang, ggplot2)
  # Uses bp_colors() and bp_ranges()
  
# TODO: Add RHR table
  

  #  HERE'S THE MEAT
    
  ggplot(ts) +
    geom_point(aes(DATE, .data[[cname]]), color = `SBP_CATEGORY`)
#    geom_point(aes(DATE, .data[[cname]]), color = `SBP_CATEGORY`)
#                          color = select(matches(str_c(cname, "_CATEGORY"))) +
#           scale_color_manual(values = bp_colors() )
 #                         color = `SBP_CATEGORY`)) 
  
}
  
p <- plot_bpts(bp_tsbl)

p
  
  
  
