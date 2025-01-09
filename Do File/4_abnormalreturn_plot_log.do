clear

cd "C:\Users\avira\OneDrive\Documents\ASSET\"

use "Data\Processed\regressiondata.dta", clear

// //Energy abnormal return plot
// twoway line energy_ar t if event_timeline != 0, lpattern(l) xline(0, lcolor(blue)) title(Energy AR v Time)  ytitle(Energy Abnormal Return)
//
//
// //Materials abnormal return plot
// twoway line mat_ar t if event_timeline != 0, lpattern(-) xline(0, lcolor(blue)) title(Materials AR v Time)  ytitle(Materials Abnormal Return)
//
// //Industrials abnormal return plot
// twoway line ind_ar t if event_timeline != 0, lpattern(_.) xline(0, lcolor(blue)) title(Industrials AR v Time)  ytitle(Industrials Abnormal Return)

//Merge 

twoway (line energy_ar t if event_timeline != 0, lpattern(l)) (line mat_ar t if event_timeline != 0, lpattern(-)) (line ind_ar t if event_timeline != 0, lpattern(_.)), xline(0, lcolor(blue))  ytitle(Abnormal Return (%)) bgcolor(white) graphregion(color(white))

graph export ar1.png, as(png)

// //Consumer Discretionary abnormal return plot
// twoway line cons_dis_ar t if event_timeline != 0, lpattern(l) xline(0, lcolor(blue)) title(Consumer Discretionary AR v Time)  ytitle(Consumer Discretionary Abnormal Return)
//
// //Consumer Staples abnormal return plot
// twoway line cons_stp_ar t if event_timeline != 0, lpattern(-) xline(0, lcolor(blue)) title(Consumer Staples AR v Time)  ytitle(Consumer Staples Abnormal Return)
//
// //Healthcare abnormal return plot
// twoway line health_ar t if event_timeline != 0, lpattern(_.) xline(0, lcolor(blue)) title(Health Care AR v Time)  ytitle(Health Care Abnormal Return)

//Merge

twoway (line cons_dis_ar t if event_timeline != 0, lpattern(l)) (line cons_stp_ar t if event_timeline != 0, lpattern(-)) (line health_ar t if event_timeline != 0, lpattern(_.)), xline(0, lcolor(blue))  ytitle(Abnormal Return (%)) bgcolor(white) graphregion(color(white))

graph export ar2.png, as(png)

// //Financials abnormal return plot
// twoway line fin_ar t if event_timeline != 0, lpatter(l) xline(0, lcolor(blue)) title(Financials AR v Time)  ytitle(Financials Abnormal Return)
//
// //Information Technology abnormal return plot
// twoway line inf_tech_ar t if event_timeline != 0, lpatter(-) xline(0, lcolor(blue)) title(Information Technology AR v Time)  ytitle(Information Technology Abnormal Return)
//
// //Communication Services abnormal return plot
// twoway line com_serv_ar t if event_timeline != 0, lpattern(_.) xline(0, lcolor(blue)) title(Communication Services AR v Time)  ytitle(Communication Services Abnormal Return)

//Merge

twoway (line fin_ar t if event_timeline != 0, lpatter(l)) (line inf_tech_ar t if event_timeline != 0, lpatter(-)) (line com_serv_ar t if event_timeline != 0, lpattern(_.)), xline(0, lcolor(blue)) ytitle(Abnormal Return (%)) bgcolor(white) graphregion(color(white))

graph export ar3.png, as(png)

// //Utilities abnormal return plot
// twoway line utility_ar t if event_timeline != 0, lpattern(l) xline(0, lcolor(blue)) title(Utilities AR v Time)  ytitle(Utilities Abnormal Return)
//
// //Real Estate abnormal return plot
// twoway line real_est_ar t if event_timeline != 0, lpattern(-) xline(0, lcolor(blue)) title(Real Estate AR v Time)  ytitle(Real Estate Abnormal Return), 

//Merge 

twoway (line utility_ar t if event_timeline != 0, lpattern(l)) (line real_est_ar t if event_timeline != 0, lpattern(-)), xline(0, lcolor(blue)) ytitle(Abnormal Return (%)) bgcolor(white) graphregion(color(white))

graph export ar4.png, as(png) replace

//All Industries

// twoway (line energy_ar t if event_timeline != 0) (line mat_ar t if event_timeline != 0) (line ind_ar t if event_timeline != 0) (line cons_dis_ar t if event_timeline != 0) (line cons_stp_ar t if event_timeline != 0) (line health_ar t if event_timeline != 0) (line fin_ar t if event_timeline != 0) (line fin_ar t if event_timeline != 0) (line inf_tech_ar t if event_timeline != 0) (line com_serv_ar t if event_timeline != 0) (line utility_ar t if event_timeline != 0) (line real_est_ar t if event_timeline != 0), xline(0, lcolor(blue)) title(AR v Time)  ytitle(Abnormal Return)
