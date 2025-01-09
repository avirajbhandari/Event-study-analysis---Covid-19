clear

cd "C:\Users\avira\OneDrive\Documents\ASSET\"

use "Data\Processed\regressiondata.dta"

//Descriptive Statistic

//Estimation window

tabstat return_energy return_mat return_ind return_cons_dis return_cons_stp return_health return_fin return_inf_tech return_com_serv return_util return_real_est return_mkt if event_timeline == 0 , stat (n mean median sd min max) col(stat)

//Pre event period

tabstat return_energy return_mat return_ind return_cons_dis return_cons_stp return_health return_fin return_inf_tech return_com_serv return_util return_real_est return_mkt if event_timeline < 2 , stat (n mean median sd min max) col(stat)


//Post event period

tabstat return_energy return_mat return_ind return_cons_dis return_cons_stp return_health return_fin return_inf_tech return_com_serv return_util return_real_est return_mkt if event_timeline == 3 , stat (n mean median sd min max) col(stat)