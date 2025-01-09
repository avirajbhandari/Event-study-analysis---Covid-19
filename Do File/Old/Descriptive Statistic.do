clear

cd "C:\Users\avira\Downloads\ASSET\Do File"

sysuse TestRegression

tsset calendar_date

//Descriptive Statistic

//Estimation Window

tabstat energy con_dis cons_stp mat ind health fin inf_tech com_serv utility real_est mkt if event_timeline == 0 , stat (n mean median sd min max) col(stat)

//Pre Window

tabstat energy con_dis cons_stp mat ind health fin inf_tech com_serv utility real_est mkt if event_timeline < 2 , stat (n mean median sd min max) col(stat)


//Post Window

tabstat energy con_dis cons_stp mat ind health fin inf_tech com_serv utility real_est mkt if event_timeline == 2 , stat (n mean median sd min max) col(stat)




