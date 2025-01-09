clear

cd "C:\Users\avira\OneDrive\Documents\ASSET\"

use "Data\Processed\TestRegression.dta", clear

//Energy abnormal return plot
twoway (line energy_ar calendar_date if event_timeline != 0), xline(21937, lcolor(blue)) title(Energy AR v Time) xtitle(Event Time) ytitle(Energy Abnormal Return)

//Materials abnormal return plot
twoway (line mat_ar calendar_date if event_timeline != 0), xline(21937, lcolor(blue)) title(Materials AR v Time) xtitle(Event Time) ytitle(Materials Abnormal Return)

//Industrials abnormal return plot
twoway (line ind_ar calendar_date if event_timeline != 0), xline(21937, lcolor(blue)) title(Industrials AR v Time) xtitle(Event Time) ytitle(Industrials Abnormal Return)

//Consumer Discretionary abnormal return plot
twoway (line con_dis_ar calendar_date if event_timeline != 0), xline(21937, lcolor(blue)) title(Consumer Discretionary AR v Time) xtitle(Event Time) ytitle(Consumer Discretionary Abnormal Return)

//Consumer Staples abnormal return plot
twoway (line con_stp_ar calendar_date if event_timeline != 0), xline(21937, lcolor(blue)) title(Consumer Staples AR v Time) xtitle(Event Time) ytitle(Consumer Staples Abnormal Return)

//Healthcare abnormal return plot
twoway (line health_ar calendar_date if event_timeline != 0), xline(21937, lcolor(blue)) title(Health Care AR v Time) xtitle(Event Time) ytitle(Health Care Abnormal Return)

//Financials abnormal return plot
twoway (line fin_ar calendar_date if event_timeline != 0), xline(21937, lcolor(blue)) title(Financials AR v Time) xtitle(Event Time) ytitle(Financials Abnormal Return)

//Information Technology abnormal return plot
twoway (line inf_tech_ar calendar_date if event_timeline != 0), xline(21937, lcolor(blue)) title(Information Technology AR v Time) xtitle(Event Time) ytitle(Information Technology Abnormal Return)

//Communication Services abnormal return plot
twoway (line com_serv_ar calendar_date if event_timeline != 0), xline(21937, lcolor(blue)) title(Communication Services AR v Time) xtitle(Event Time) ytitle(Communication Services Abnormal Return)

//Utilities abnormal return plot
twoway (line utility_ar calendar_date if event_timeline != 0), xline(21937, lcolor(blue)) title(Utilities AR v Time) xtitle(Event Time) ytitle(Utilities Abnormal Return)

//Real Estate abnormal return plot
twoway (line real_est_ar calendar_date if event_timeline != 0), xline(21937, lcolor(blue)) title(Real Estate AR v Time) xtitle(Event Time) ytitle(Real Estate Abnormal Return)

//All Industries

twoway (line energy_ar calendar_date if event_timeline != 0) (line mat_ar calendar_date if event_timeline != 0) (line ind_ar calendar_date if event_timeline != 0) (line con_dis_ar calendar_date if event_timeline != 0) (line con_stp_ar calendar_date if event_timeline != 0) (line health_ar calendar_date if event_timeline != 0) (line fin_ar calendar_date if event_timeline != 0) (line fin_ar calendar_date if event_timeline != 0) (line inf_tech_ar calendar_date if event_timeline != 0) (line com_serv_ar calendar_date if event_timeline != 0) (line utility_ar calendar_date if event_timeline != 0) (line real_est_ar calendar_date if event_timeline != 0), xline(21937, lcolor(blue)) title(AR v Time) xtitle(Event Time) ytitle(Abnormal Return)
