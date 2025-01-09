clear

cd "C:\Users\avira\OneDrive\Documents\ASSET\"

use "Data\Processed\regressiondata.dta", clear


//Energy abnormal return plot
twoway (line return_energy t if event_timeline != 0, lpattern(l)) (line energy1 t if event_timeline != 0, lpattern(2)), xline(0, lcolor(blue)) ytitle(Energy Return) bgcolor(white) graphregion(color(white))

graph export ab1.png, as(png)

//Health care abnormal return plot
twoway (line return_health t if event_timeline != 0, lpattern(l)) (line health1 t if event_timeline != 0, lpattern(2)), xline(0, lcolor(blue)) ytitle(Health Care Return) bgcolor(white) graphregion(color(white))

graph export ab2.png, as(png)

//Financials abnormal return plot
twoway (line return_fin t if event_timeline != 0, lpattern(l)) (line fin1 t if event_timeline != 0, lpattern(2)), xline(0, lcolor(blue)) ytitle(Finincials Return) bgcolor(white) graphregion(color(white))

//Consumer Staples abnormal return plot
twoway (line return_cons_stp t if event_timeline != 0, lpattern(l)) (line cons_stp1 t if event_timeline != 0, lpattern(2)), xline(0, lcolor(blue)) ytitle(Consumer Staples Return) bgcolor(white) graphregion(color(white))

graph export ab3.png, as(png)

// line energy_car t