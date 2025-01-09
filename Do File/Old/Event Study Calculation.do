clear

cd "C:\Users\avira\OneDrive\Documents\ASSET\"

use "Data\Processed\TestRegression.dta", clear

//Calculating Abnormal Return

*Energy

//Regression 

regress energy mkt if event_timeline == 0
 
//Prediction
 
predict energy1, xb

//Abnormal Return 

gen energy_ar = energy - energy1 if event_timeline != 0

//Cumulative Abnormal Return [-30, 30]

egen energy_car = total(energy_ar)

//Prediction Diagram 

line energy energy1 calendar_date, xline(21937, lcolor(blue)) c( .1)

*Materials 

regress mat mkt if event_timeline == 0
 
//Prediction
 
predict mat1, xb

//Abnormal Return 

gen mat_ar = mat - mat1 if event_timeline != 0

//Cumulative Abnormal Return [-30, 30]

egen mat_car = total(mat_ar)

//Prediction Diagram 

line mat mat1 calendar_date, xline(21937, lcolor(blue)) c( .1)

*Industrials

regress ind mkt if event_timeline == 0
 
//Prediction
 
predict ind1, xb

//Abnormal Return 

gen ind_ar = ind - ind1 if event_timeline != 0

//Cumulative Abnormal Return [-30, 30]

egen ind_car = total(ind_ar)

//Prediction Diagram 

line ind ind1 calendar_date, xline(21937, lcolor(blue)) c( .1)

*Consumer Discretionary

regress con_dis mkt if event_timeline == 0
 
//Prediction
 
predict con_dis1, xb

//Abnormal Return 

gen con_dis_ar = con_dis - con_dis1 if event_timeline != 0

//Cumulative Abnormal Return [-30, 30]

egen con_dis_car = total(con_dis_ar)

//Prediction Diagram 

line con_dis con_dis1 calendar_date, xline(21937, lcolor(blue)) c( .1)

*Consumer Staples

regress cons_stp mkt if event_timeline == 0
 
//Prediction
 
predict con_stp1, xb

//Abnormal Return

gen con_stp_ar = cons_stp - cons_stp1 if event_timeline != 0

//Cumulative Abnormal Return [-30, 30]

egen con_stp_car = total(cons_stp_ar)

//Prediction Diagram 

line cons_stp cons_stp1 calendar_date, xline(21937, lcolor(blue)) c( .1)

*Health Care

regress health mkt if event_timeline == 0
 
//Prediction
 
predict health1, xb

//Abnormal Return 

gen health_ar = health - health1 if event_timeline != 0

//Cumulative Abnormal Return [-30, 30]

egen health_car = total(health_ar)

//Prediction Diagram 

line health health1 calendar_date, xline(21937, lcolor(blue)) c( .1)

*Financials

regress fin mkt if event_timeline == 0
 
//Prediction
 
predict fin1, xb

//Abnormal Return 

gen fin_ar = fin - fin1 if event_timeline != 0

//Cumulative Abnormal Return [-30, 30]

egen fin_car = total(fin_ar)

//Prediction Diagram 

line fin fin1 calendar_date, xline(21937, lcolor(blue)) c( .1)

*Information Technology

regress inf_tech mkt if event_timeline == 0
 
//Prediction
 
predict inf_tech1, xb

//Abnormal Return

gen inf_tech_ar = inf_tech - inf_tech1 if event_timeline != 0

//Cumulative Abnormal Return [-30, 30]

egen inf_tech_car = total(inf_tech_ar)

//Prediction Diagram 

line inf_tech inf_tech1 calendar_date, xline(21937, lcolor(blue)) c( .1)

*Communication Services

regress com_serv mkt if event_timeline == 0
 
//Prediction
 
predict com_serv1, xb

//Abnormal Return 

gen com_serv_ar = com_serv - com_serv1 if event_timeline != 0

//Cumulative Abnormal Return [-30, 30]

egen com_serv_car = total(com_serv_ar)

//Prediction Diagram 

line com_serv com_serv1 calendar_date, xline(21937, lcolor(blue)) c( .1)

*Utilities 

regress utility mkt if event_timeline == 0
 
//Prediction
 
predict utility1, xb

//Abnormal Return 

gen utility_ar = utility - utility1 if event_timeline != 0

//Cumulative Abnormal Return [-30, 30]

egen utility_car = total(utility_ar)

//Prediction Diagram 

line utility utility1 calendar_date, xline(21937, lcolor(blue)) c( .1)

*Real Estate

regress real_est mkt if event_timeline == 0
 
//Prediction
 
predict real_est1, xb

// //Heteroskedasticity Visualize
//
// predict real_est_res, residual
//
// scatter real_est_res mkt
//
// //Autocorrelation
//
// estat bgodfrey, lags (1 2 3 4 5 6 7 8 9 10)

//Abnormal Return 

gen real_est_ar = real_est - real_est1 if event_timeline != 0

//Cumulative Abnormal Return [-30, 30]

egen real_est_car = total(real_est_ar)

//Prediction Diagram 

line real_est real_est1 calendar_date if event_timeline != 0 , xline(21937, lcolor(blue)) c( .1)

line real_est real_est1 calendar_date if event_timeline == 0 , c( .1)

scatter real_est real_est1 if event_timeline != 0

scatter real_est real_est1 calendar_date if event_timeline == 0 , c( .1)

