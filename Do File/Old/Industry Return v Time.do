clear

cd "C:\Users\avira\OneDrive\Documents\ASSET\"

use "Data\Processed\TestRegression.dta", clear

label var con_dis "Consumer Discretionary"
label var cons_stp "Consumer Staple"
label var air "Airlines"
label var mat "Material"
label var mat "Materials"
label var ind "Industrials"
label var health "Health Care"
label var fin "Financials"
label var inf_tech "Information Technology"
label var com_serv "Communication Services"
label var utility "Utilities"
label var real_est "Real Estate"
label var mkt "S&P 500"

//Descriptive Statistics

tabstat energy con_dis cons_stp mat ind health fin inf_tech com_serv utility real_est mkt, stat (n mean median sd min max) col(stat)

//Time variable

tsset calendar_date

//Twoway Plots
//Draw vertical line on event date

display mdy(1,23,2020)

//Energy
twoway (line energy calendar_date) (lfit energy calendar_date), xline(21937, lcolor(blue)) title(Energy v Time) xtitle(Time) ytitle(Energy Price Change)

//Energy Without fit

twoway (line energy calendar_date), xline(21937, lcolor(blue)) title(Energy v Time) xtitle(Time) ytitle(Energy Price Change)

graph export "Energy.png", as(png)

//Materials

twoway (line mat calendar_date), xline(21937, lcolor(blue)) title(Materials v Time) xtitle(Time) ytitle(Materials Price Change)

graph export "Materials.png", as(png)

//Industrials

twoway (line ind calendar_date), xline(21937, lcolor(blue)) title(Industrials v Time) xtitle(Time) ytitle(Industrials Price Change)

graph export "Industrials.png", as(png)

//Consumer Discretionary

twoway (line con_dis calendar_date), xline(21937, lcolor(blue)) title(Consumer Discretionary v Time) xtitle(Time) ytitle(Consumer Discretionary Price Change)

graph export "Consumer Discretionary.png", as(png)

//Consumer Staples

twoway (line cons_stp calendar_date), xline(21937, lcolor(blue)) title(Consumer Staples v Time) xtitle(Time) ytitle(Consumer Staples Price Change)

graph export "Consumer Staples.png", as(png)

//Health Care

twoway (line health calendar_date), xline(21937, lcolor(blue)) title(Health Care v Time) xtitle(Time) ytitle(Health Care Price Change)

graph export "Health Care.png", as(png)

//Financials

twoway (line fin calendar_date), xline(21937, lcolor(blue)) title(Financials v Time) xtitle(Time) ytitle(Financials Price Change)

graph export "Financials.png", as(png)

//Information Technology

twoway (line inf_tech calendar_date), xline(21937, lcolor(blue)) title(Information Technology v Time) xtitle(Time) ytitle(Information Technology Price Change)

graph export "Information Technology.png", as(png)

//Communication Services

twoway (line com_serv calendar_date), xline(21937, lcolor(blue)) title(Communication Services v Time) xtitle(Time) ytitle(Communication Services Price Change)

graph export "Communication Services.png", as(png)

//Utilities

twoway (line utility calendar_date), xline(21937, lcolor(blue)) title(Utilities v Time) xtitle(Time) ytitle(Utilities Price Change)

graph export "Utilities.png", as(png)

//Real Estate

twoway (line real_est calendar_date), xline(21937, lcolor(blue)) title(Real Estate v Time) xtitle(Time) ytitle(Real Estate Price Change)

graph export "Real Estate.png", as(png)

//S&P500

twoway (line mkt calendar_date), xline(21937, lcolor(blue)) title(S&P500 v Time) xtitle(Time) ytitle(S&P500 Price Change)

graph export "S&P500.png", as(png)
