clear

cd "C:\Users\avira\OneDrive\Documents\ASSET\"

use "Data\Processed\regressiondata.dta", clear

// //Energy abnormal return plot
// twoway line energy_car t if event_timeline != 0, lpattern(l) xline(0, lcolor(blue)) ytitle(Energy Abnormal Return)
//
//
// //Materials abnormal return plot
// twoway line mat_car t if event_timeline != 0, lpattern(-) xline(0, lcolor(blue))  ytitle(Materials Abnormal Return)
//
// //Industrials abnormal return plot
// twoway line ind_car t if event_timeline != 0, lpattern(_.) xline(0, lcolor(blue))  ytitle(Industrials Abnormal Return)

//Merge 

twoway (line energy_car t if event_timeline != 0, lpattern(l)) (line mat_car t if event_timeline != 0, lpattern(-)) (line ind_car t if event_timeline != 0, lpattern(_.)), xline(0, lcolor(blue))  ytitle(Abnormal Return (%)) bgcolor(white) graphregion(color(white))

graph export car1.png, as(png)

// //Consumer Discretionary abnormal return plot
// twoway line cons_dis_car t if event_timeline != 0, lpattern(l) xline(0, lcolor(blue)) ytitle(Consumer Discretionary Abnormal Return)
//
// //Consumer Staples abnormal return plot
// twoway line cons_stp_car t if event_timeline != 0, lpattern(-) xline(0, lcolor(blue))  ytitle(Consumer Staples Abnormal Return)
//
// //Healthcare abnormal return plot
// twoway line health_car t if event_timeline != 0, lpattern(_.) xline(0, lcolor(blue)) ytitle(Health Care Abnormal Return)

//Merge

twoway (line cons_dis_car t if event_timeline != 0, lpattern(l)) (line cons_stp_car t if event_timeline != 0, lpattern(-)) (line health_car t if event_timeline != 0, lpattern(_.)), xline(0, lcolor(blue)) ytitle(Cumulative Abnormal Return (%)) bgcolor(white) graphregion(color(white))

graph export car2.png, as(png)

// //Financials abnormal return plot
// twoway line fin_car t if event_timeline != 0, lpatter(l) xline(0, lcolor(blue))  ytitle(Financials Abnormal Return) 
//
// //Information Technology abnormal return plot
// twoway line inf_tech_car t if event_timeline != 0, lpatter(-) xline(0, lcolor(blue)) ytitle(Information Technology Abnormal Return)
//
// //Communication Services abnormal return plot
// twoway line com_serv_car t if event_timeline != 0, lpattern(_.) xline(0, lcolor(blue)) ytitle(Communication Services Abnormal Return)

//Merge

twoway (line fin_car t if event_timeline != 0, lpatter(l)) (line inf_tech_car t if event_timeline != 0, lpatter(-)) (line com_serv_car t if event_timeline != 0, lpattern(_.)), xline(0, lcolor(blue))  ytitle(Cumulative Abnormal Return (%)) bgcolor(white) graphregion(color(white))

graph export car3.png, as(png)

// //Utilities abnormal return plot
// twoway line utility_car t if event_timeline != 0, lpattern(l) xline(0, lcolor(blue)) ytitle(Utilities Abnormal Return)
//
// //Real Estate abnormal return plot
// twoway line real_est_car t if event_timeline != 0, lpattern(-) xline(0, lcolor(blue)) ytitle(Real Estate Abnormal Return), 

//Merge 

twoway (line utility_car t if event_timeline != 0, lpattern(l)) (line real_est_car t if event_timeline != 0, lpattern(-)), xline(0, lcolor(blue)) ytitle(Cumulative Abnormal Return (%)) bgcolor(white) graphregion(color(white))

graph export car4.png, as(png) replace

//All Industries

// twoway (line energy_car t if event_timeline != 0) (line mat_car t if event_timeline != 0) (line ind_car t if event_timeline != 0) (line cons_dis_car t if event_timeline != 0) (line cons_stp_car t if event_timeline != 0) (line health_car t if event_timeline != 0) (line fin_car t if event_timeline != 0) (line fin_car t if event_timeline != 0) (line inf_tech_car t if event_timeline != 0) (line com_serv_car t if event_timeline != 0) (line utility_car t if event_timeline != 0) (line real_est_car t if event_timeline != 0), xline(0, lcolor(blue)) title(AR v Time)  ytitle(Abnormal Return)
