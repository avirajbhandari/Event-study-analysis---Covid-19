label var con_dis "Consumer Discretionary"
label var cons_stp "Consumer Staple"
label var air "Airlines"
label var mat "Material"
label var mat "Materials"
label var ind "Industrials"
label var health "Health Care"
label var fin "Financials"
label var inf_tech "Information Technology"
label var utility "Utilities"
label var real_est "Real Estate"
label var mkt "S&P 500"

*Seperating Event and Estimation Windows
gen event_timeline = 0
replace event_timeline = 3 if _n == 191
replace event_timeline = 1 if _n > 160 & _n < 191
replace event_timeline = 2 if _n > 191 & _n < 222