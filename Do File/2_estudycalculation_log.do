clear

cd "C:\Users\avira\OneDrive\Documents\ASSET\"

use "Data\Processed\cleandata.dta", clear

tsset date 

//Calculating Abnormal Return

*Energy

//Regression 	

regress return_energy return_mkt if event_timeline == 0

//Prediction
 
predict energy1, xb 

// //Heteroskedasticity Visualize
//
// predict energy_res, residual
//
// scatter energy_res energy1
//
// //Autocorrelation
//
// estat bgodfrey, lags (1 2 3 4 5 6 7 8 9 10)

//Abnormal Return 

gen energy_ar = return_energy - energy1 if event_timeline != 0

//Cumulative Abnormal Return [-30, 30]

// egen energy_car = total(energy_ar)

gen energy_car = energy_ar 

replace energy_car = energy_car + energy_car[_n-1] if _n > 162

//Prediction Diagram 

// line return_energy energy1 date, xline(21937, lcolor(blue)) c( .1)

*Materials 

regress return_mat return_mkt if event_timeline == 0
 
//Prediction
 
predict mat1, xb

// //Heteroskedasticity Visualize
//
// predict mat_res, residual
//
// scatter mat_res mat1
//
// //Autocorrelation
//
// estat bgodfrey, lags (1 2 3 4 5 6 7 8 9 10)

//Abnormal Return 

gen mat_ar = return_mat - mat1 if event_timeline != 0

//Cumulative Abnormal Return [-30, 30]

gen mat_car = mat_ar 

replace mat_car = mat_car + mat_car[_n-1] if _n > 162

//Prediction Diagram 

// line return_mat mat1 date, xline(21937, lcolor(blue)) c( .1)

*Industrials

regress return_ind return_mkt if event_timeline == 0
 
//Prediction
 
predict ind1, xb

// //Heteroskedasticity Visualize
//
// predict ind_res, residual
//
// scatter ind_res ind1
//
// //Autocorrelation
//
// estat bgodfrey, lags (1 2 3 4 5 6 7 8 9 10)

//Abnormal Return 

gen ind_ar = return_ind - ind1 if event_timeline != 0

//Cumulative Abnormal Return [-30, 30]

gen ind_car = ind_ar 

replace ind_car = ind_car + ind_car[_n-1] if _n > 162

//Prediction Diagram 

// line return_ind ind1 date, xline(21937, lcolor(blue)) c( .1)

*Consumer Discretionary

regress return_cons_dis return_mkt if event_timeline == 0
 
//Prediction
 
predict cons_dis1, xb

// //Heteroskedasticity Visualize
//
// predict cons_dis_res, residual
//
// scatter cons_dis_res cons_dis1
//
// //Autocorrelation
//
// estat bgodfrey, lags (1 2 3 4 5 6 7 8 9 10)

//Abnormal Return 

gen cons_dis_ar = return_cons_dis - cons_dis1 if event_timeline != 0

//Cumulative Abnormal Return [-30, 30]

gen cons_dis_car = cons_dis_ar 

replace cons_dis_car = cons_dis_car + cons_dis_car[_n-1] if _n > 162

//Prediction Diagram 

// line return_cons_dis cons_dis1 date, xline(21937, lcolor(blue)) c( .1)

*Consumer Staples

regress return_cons_stp return_mkt if event_timeline == 0
 
//Prediction
 
predict cons_stp1, xb

// //Heteroskedasticity Visualize
//
// predict cons_stp_res, residual
//
// scatter cons_stp_res cons_stp1
//
// //Autocorrelation
//
// estat bgodfrey, lags (1 2 3 4 5 6 7 8 9 10)  //some serial correlation 

//Abnormal Return

gen cons_stp_ar = return_cons_stp - cons_stp1 if event_timeline != 0

//Cumulative Abnormal Return [-30, 30]

gen cons_stp_car = cons_stp_ar 

replace cons_stp_car = cons_stp_car + cons_stp_car[_n-1] if _n > 162

//Prediction Diagram 

// line return_cons_stp cons_stp1 date, xline(21937, lcolor(blue)) c( .1)

*Health Care

regress return_health return_mkt if event_timeline == 0
 
//Prediction
 
predict health1, xb

// //Heteroskedasticity Visualize
//
// predict health_res, residual
//
// scatter health_res health1
//
// //Autocorrelation
//
// estat bgodfrey, lags (1 2 3 4 5 6 7 8 9 10)

//Abnormal Return 

gen health_ar = return_health - health1 if event_timeline != 0

//Cumulative Abnormal Return [-30, 30]

gen health_car = health_ar 

replace health_car = health_car + health_car[_n-1] if _n > 162

//Prediction Diagram 

// line return_health health1 date, xline(21937, lcolor(blue)) c( .1)

*Financials

regress return_fin return_mkt if event_timeline == 0

//Prediction

predict fin1, xb

// //Heteroskedasticity Visualize
//
// predict fin_res, residual
//
// scatter fin_res fin1
//
// //Autocorrelation
//
// estat bgodfrey, lags (1 2 3 4 5 6 7 8 9 10)

//Abnormal Return 

gen fin_ar = return_fin - fin1 if event_timeline != 0

//Cumulative Abnormal Return [-30, 30]

gen fin_car = fin_ar 

replace fin_car = fin_car + fin_car[_n-1] if _n > 162

//Prediction Diagram 

// line return_fin fin1 date, xline(21937, lcolor(blue)) c( .1)

*Information Technology

regress return_inf_tech return_mkt if event_timeline == 0
 
//Prediction
 
predict inf_tech1, xb

//Abnormal Return

gen inf_tech_ar = return_inf_tech - inf_tech1 if event_timeline != 0

//Cumulative Abnormal Return [-30, 30]

gen inf_tech_car = inf_tech_ar 

replace inf_tech_car = inf_tech_car + inf_tech_car[_n-1] if _n > 162

//Prediction Diagram 

// line return_inf_tech inf_tech1 date, xline(21937, lcolor(blue)) c( .1)

*Communication Services

regress return_com_serv return_mkt if event_timeline == 0
 
//Prediction
 
predict com_serv1, xb

//Abnormal Return 

gen com_serv_ar = return_com_serv - com_serv1 if event_timeline != 0

//Cumulative Abnormal Return [-30, 30]

gen com_serv_car = com_serv_ar 

replace com_serv_car = com_serv_car + com_serv_car[_n-1] if _n > 162

//Prediction Diagram 

// line return_com_serv com_serv1 date, xline(21937, lcolor(blue)) c( .1)

*Utilities 

regress return_util return_mkt if event_timeline == 0
 
//Prediction
 
predict utility1, xb

//Abnormal Return 

gen utility_ar = return_util - utility1 if event_timeline != 0

//Cumulative Abnormal Return [-30, 30]

gen utility_car = utility_ar 

replace utility_car = utility_car + utility_car[_n-1] if _n > 162

//Prediction Diagram 

// line return_util utility1 date, xline(21937, lcolor(blue)) c( .1)

*Real Estate

regress return_real_est return_mkt if event_timeline == 0
 
//Prediction
 
predict real_est1, xb

// //Heteroskedasticity Visualize
//
// predict real_est_res, residual
//
// scatter real_est_res real_est1
//
// //Autocorrelation
//
// estat bgodfrey, lags (1 2 3 4 5 6 7 8 9 10)

//Abnormal Return 

gen real_est_ar = return_real_est - real_est1 if event_timeline != 0

//Cumulative Abnormal Return [-30, 30]

gen real_est_car = real_est_ar 

replace real_est_car = real_est_car + real_est_car[_n-1] if _n > 162

//Prediction Diagram 

// line return_real_est real_est1 date if event_timeline != 0 , xline(21937, lcolor(blue)) c( .1)

// line real_est real_est1 calendar_date if event_timeline == 0 , c( .1)
//
// scatter real_est real_est1 if event_timeline != 0
//
// scatter real_est real_est1 calendar_date if event_timeline == 0 , c( .1)

gen t = _n

replace t = t- 191

//label returns

label var t "Days After Event"
label var return_energy "Energy"
label var return_mat "Materials"
label var return_ind "Industrials"
label var return_cons_dis "Consumer Discretionary"
label var return_cons_stp "Consumer Staple"
label var return_health "Health Care"
label var return_fin "Financials"
label var return_inf_tech "Information Technology"
label var return_com_serv "Communication Services"
label var return_util "Utilities"
label var return_real_est "Real Estate"
label var return_mkt "S&P 500"

//label abnormal returns

label var energy_ar "SPNY"
label var mat_ar "SPLRCM"
label var ind_ar "SPLRCI"
label var cons_dis_ar "SPLRCD"
label var cons_stp_ar "SPLRCS"
label var health_ar "SPXHC"
label var fin_ar "SPSY"
label var inf_tech_ar "SPLRCT"
label var com_serv_ar "SPLRCL"
label var utility_ar "SPLRCU"
label var real_est_ar "SPLRCREC"

//label cumulative abnormal returns

label var energy_car "SPNY"
label var mat_car "SPLRCM"
label var ind_car "SPLRCI"
label var cons_dis_car "SPLRCD"
label var cons_stp_car "SPLRCS"
label var health_car "SPXHC"
label var fin_car "SPSY"
label var inf_tech_car "SPLRCT"
label var com_serv_car "SPLRCL"
label var utility_car "SPLRCU"
label var real_est_car "SPLRCREC"




save "Data\Processed\regressiondata.dta", replace

