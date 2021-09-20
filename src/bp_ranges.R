# bp_ranges() Returns a table of ranges for different types (systolic, diastolic) of blood pressure readings.

bp_ranges<- function (bptype = "SBP"){
  tribble(
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
) %>%
  filter( TYPE == {{ bptype }})
}