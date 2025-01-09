clear 

cd "C:\Users\avira\OneDrive\Documents\ASSET"

//Clean 1
* _n means observation number 

clear 

import delimited "Data\Original\GISC\1S&P 500 Energy Historical Data.csv"

rename *date date

keep date price

generate numdate = date(date, "MDY")

sort numdate

gen last_price = price[_n-1] if _n>1

gen return_energy = ln(price/last_price)*100

rename price price_energy

gen ln_price_energy = ln(price_energy)

keep date price_energy return_energy ln_price_energy

save "Data\Processed\energy.dta", replace

//Clean 2

clear

import delimited "Data\Original\GISC\2S&P 500 Materials Historical Data.csv"

rename *date date

keep date price

generate numdate = date(date, "MDY")

sort numdate

gen last_price = price[_n-1] if _n>1

gen return_mat = ln(price/last_price)*100

rename price price_mat

gen ln_price_mat = ln(price_mat)

keep date price_mat return_mat ln_price_mat

save "Data\Processed\materials.dta", replace

//Clean 3

clear

import delimited "Data\Original\GISC\3S&P 500 Industrials Historical Data.csv"

rename *date date

keep date price

generate numdate = date(date, "MDY")

sort numdate

gen last_price = price[_n-1] if _n>1

gen return_ind = ln(price/last_price)*100

rename price price_ind

gen ln_price_ind = ln(price_ind)

keep date price_ind return_ind ln_price_ind

save "Data\Processed\industrials.dta", replace

//Clean 4

clear

import delimited "Data\Original\GISC\4S&P 500 Consumer Discretionary Historical Data.csv"

rename *date date

keep date price

******************************************************
// You have to run the whole loop at once
******************************************************
// put variables we need in varlist
local varlist price
foreach v in `varlist'{			// index variables in varlist by v	
gen `v'_n=subinstr(`v',",","",1) // in each v, gen new var, substitute strings (the comma) in each variable with nothing ("")
destring `v'_n, replace 		// destring the fixed variable
drop `v'						// drop old variable
rename  `v'_n `v'				//rename the new variable as the old
}
******************************************************

generate numdate = date(date, "MDY")

sort numdate

gen last_price = price[_n-1] if _n>1

gen return_cons_dis = ln(price/last_price)*100

rename price price_cons_dis

gen ln_price_cons_dis = ln(price_cons_dis)

keep date price_cons_dis return_cons_dis ln_price_cons_dis

// //Check for duplicates
// duplicates report date
// duplicates list

drop if _n > 274

save "Data\Processed\consumer_discretionary.dta", replace


//Clean 5

clear

import delimited "Data\Original\GISC\5S&P 500 Consumer Staples Historical Data.csv"

rename *date date

keep date price

generate numdate = date(date, "MDY")

sort numdate

gen last_price = price[_n-1] if _n>1

gen return_cons_stp = ln(price/last_price)*100

rename price price_cons_stp

gen ln_price_cons_stp = ln(price_cons_stp)

keep date price_cons_stp return_cons_stp ln_price_cons_stp

drop if _n > 274

save "Data\Processed\consumer_stapels.dta", replace

//Clean 6

clear

import delimited "Data\Original\GISC\6S&P 500 Health Care Historical Data.csv"

rename *date date

keep date price 

******************************************************
// You have to run the whole loop at once
******************************************************
// put variables we need in varlist
local varlist price
foreach v in `varlist'{			// index variables in varlist by v	
gen `v'_n=subinstr(`v',",","",1) // in each v, gen new var, substitute strings (the comma) in each variable with nothing ("")
destring `v'_n, replace 		// destring the fixed variable
drop `v'						// drop old variable
rename  `v'_n `v'				//rename the new variable as the old
}
******************************************************

generate numdate = date(date, "MDY")

sort numdate

gen last_price = price[_n-1] if _n>1

gen return_health = ln(price/last_price)*100

rename price price_health

gen ln_price_health = ln(price_health)

keep date price_health return_health ln_price_health

save "Data\Processed\health_care.dta", replace

//Clean 7

clear

import delimited "Data\Original\GISC\7S&P 500 Financials Historical Data.csv"

rename *date date

keep date price

generate numdate = date(date, "MDY")

sort numdate

gen last_price = price[_n-1] if _n>1

gen return_fin = ln(price/last_price)*100

rename price price_fin

gen ln_price_fin = ln(price_fin)

keep date price_fin return_fin ln_price_fin

save "Data\Processed\financials.dta", replace

//Clean 8

clear

import delimited "Data\Original\GISC\8S&P 500 Information Technology Historical Data.csv"

rename *date date

keep date price

******************************************************
// You have to run the whole loop at once
******************************************************
// put variables we need in varlist
local varlist price 
foreach v in `varlist'{			// index variables in varlist by v	
gen `v'_n=subinstr(`v',",","",1) // in each v, gen new var, substitute strings (the comma) in each variable with nothing ("")
destring `v'_n, replace 		// destring the fixed variable
drop `v'						// drop old variable
rename  `v'_n `v'				//rename the new variable as the old
}
******************************************************

generate numdate = date(date, "MDY")

sort numdate

gen last_price = price[_n-1] if _n>1

gen return_inf_tech = ln(price/last_price)*100

rename price price_inf_tech

gen ln_price_inf_tech = ln(price_inf_tech)

keep date price_inf_tech return_inf_tech ln_price_inf_tech

save "Data\Processed\information_technology.dta", replace

//Clean 9

clear

import delimited "Data\Original\GISC\9S&P 500 Communication Services.csv"

rename *date date

rename close price

keep date price

generate numdate = date(date, "MDY")

sort numdate

gen last_price = price[_n-1] if _n>1

gen return_com_serv = ln(price/last_price)*100

rename price price_com_serv

gen ln_price_com_serv = ln(price_com_serv)

keep date price_com_serv return_com_serv ln_price_com_serv

drop if _n > 221

save "Data\Processed\communication_services.dta", replace

//Clean 10

clear

import delimited "Data\Original\GISC\10S&P 500 Utilities Historical Data.csv"

rename *date date

keep date price 

generate numdate = date(date, "MDY")

sort numdate

gen last_price = price[_n-1] if _n>1

gen return_util = ln(price/last_price)*100

rename price price_util

gen ln_price_util = ln(price_util)

keep date price_util return_util ln_price_util

save "Data\Processed\utilities.dta", replace


//Clean 11

clear

import delimited "Data\Original\GISC\11S&P 500 Real Estate Historical Data.csv"

rename *date date

keep date price 

generate numdate = date(date, "MDY")

sort numdate

gen last_price = price[_n-1] if _n>1

gen return_real_est = ln(price/last_price)*100

rename price price_real_est

gen ln_price_real_est = ln(price_real_est)

keep date price_real_est return_real_est ln_price_real_est

save "Data\Processed\real_estate.dta", replace

//Clean 12

clear

import delimited "Data\Original\S&P 500.csv"

rename *date date

keep date price open high low

******************************************************
// You have to run the whole loop at once
******************************************************
// put variables we need in varlist
local varlist price
foreach v in `varlist'{			// index variables in varlist by v	
gen `v'_n=subinstr(`v',",","",1) // in each v, gen new var, substitute strings (the comma) in each variable with nothing ("")
destring `v'_n, replace 		// destring the fixed variable
drop `v'						// drop old variable
rename  `v'_n `v'				//rename the new variable as the old
}
******************************************************

generate numdate = date(date, "MDY")

sort numdate

gen last_price = price[_n-1] if _n>1

gen return_mkt = ln(price/last_price)*100

rename price price_mkt

gen ln_price_mkt = ln(price_mkt)

keep date price_mkt return_mkt ln_price_mkt

save "Data\Processed\s&p500.dta", replace


//Merge
clear 

use "Data\Processed\energy.dta"

merge 1:1 date using "Data\Processed\materials.dta"

// tab _merge

drop _merge

merge 1:1 date using "Data\Processed\industrials.dta"

drop _merge

merge 1:1 date using "Data\Processed\consumer_discretionary.dta"

drop _merge

merge 1:1 date using "Data\Processed\consumer_stapels.dta"

drop _merge

merge 1:1 date using "Data\Processed\health_care.dta"

drop _merge

merge 1:1 date using "Data\Processed\financials.dta"

drop _merge

merge 1:1 date using "Data\Processed\information_technology.dta"

drop _merge

merge 1:1 date using "Data\Processed\communication_services.dta"

drop _merge

merge 1:1 date using "Data\Processed\utilities.dta"

drop _merge

merge 1:1 date using "Data\Processed\real_estate.dta"

drop _merge

merge 1:1 date using "Data\Processed\s&p500.dta"

drop _merge

//Sort in ascending order

generate numdate = date(date, "MDY")

sort numdate

drop if numdate < 21662 | numdate > 21980

//Generate event timeline

gen event_timeline = 0

replace event_timeline = 1 if _n > 161 & _n < 191 

replace event_timeline = 2 if _n == 191  

replace event_timeline = 3 if _n > 191

//format date

format numdate %td

drop date

order numdate, first 

rename numdate date 

save "Data\Processed\cleandata.dta", replace



