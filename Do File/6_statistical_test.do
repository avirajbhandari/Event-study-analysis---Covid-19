clear 

cd "C:\Users\avira\OneDrive\Documents\ASSET\"

use "Data\Processed\regressiondata.dta", clear


*ttest using loop 

local industry energy mat ind cons_dis cons_stp health fin inf_tech com_serv utility real_est                         // store varnames in local variable
foreach i in `industry'{         // start loop
ttest `i'_car==0                 // test whether mean CAR == 0
ttest `i'_ar==0                  // test whether mean AR == 0
}

*ttest (-29, 0) 

local industry energy mat ind cons_dis cons_stp health fin inf_tech com_serv utility real_est                                                 // store varnames in local variable
foreach i in `industry'{                                 // start loop
ttest `i'_car==0 if event_timeline ==  1                 // test whether mean CAR == 0
ttest `i'_ar==0 if event_timeline ==  1                  // test whether mean AR == 0
}

*ttest (0, 29) 

local industry energy mat ind cons_dis cons_stp health fin inf_tech com_serv utility real_est                                                 // store varnames in local variable
foreach i in `industry'{                                 // start loop
ttest `i'_car==0 if event_timeline ==  3                 // test whether mean CAR == 0
ttest `i'_ar==0 if event_timeline ==  3                  // test whether mean AR == 0
}

*ttest princeton

//abnormal return ttest

egen energy_ar_sd = sd(energy_ar)

egen car_energy = total(energy_ar)

gen t_energy_ar = (1/sqrt(60))*(car_energy/energy_ar_sd)

ttest energy_ar == 0 

//cumulative abnormal return ttest

egen energy_car_sd = sd(energy_car)

egen caar_energy = total(energy_car)

gen t_energy_car = (1/sqrt(60))*(caar_energy/energy_car_sd)

ttest energy_car == 0 

//both tests give same results

