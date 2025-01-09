clear

import delimited "C:\Users\avira\Downloads\S&P 500 Historical Data.csv", stripquotes(yes)

import delimited "C:\Users\avira\OneDrive\Documents\ASSET\Data\Original\GISC\6S&P 500 Health Care Historical Data"

import delimited "C:\Users\avira\OneDrive\Documents\ASSET\Data\Original\GISC\1S&P 500 Energy Historical Data"

import delimited "C:\Users\avira\OneDrive\Documents\ASSET\Data\Original\GISC\8S&P 500 Information Technology Historical Data"

rename *date date			// the date variable in this file is read weird
keep date price open high low

// fixing the string issue using loops (this is just for example, you could do the steps one variable by one)

// it turns out the commas in price, open, etc, were causing problems for stata
// when coded as strings
// so I remove the comma in several variables using subinstr
// then destring and replace, which works

******************************************************
// You have to run the whole loop at once
******************************************************
// put variables we need in varlist
local varlist price open high low
foreach v in `varlist'{			// index variables in varlist by v	
gen `v'_n=subinstr(`v',",","",1) // in each v, gen new var, substitute strings (the comma) in each variable with nothing ("")
destring `v'_n, replace 		// destring the fixed variable
drop `v'						// drop old variable
rename  `v'_n `v'				//rename the new variable as the old
}
******************************************************

generate numdate = date(date, "MDY")
sort numdate

**** QUESTION: is the return the difference between open and close?
**** or is it the difference between today and yesterday's closing price?

gen return = ln(price)-ln(open) // assuming its close-open (just for example, fix later)
gen industry = "info_teach"

// save this in a file with intuitive data name. format all datasets identically

// import delimited "C:\Users\avira\Downloads\ASSET\Data\Original\GISC\6S&P 500 Health Care Historical Data.csv", varnames(1) stripquotes(yes)

keep date price open high low vol change

replace date = real(date) 

replace price = real(price)

encode price, gen(price_n)

decode price_n, gen(price_m)

decode price, gen(price_m)

hist price_n

sum price_n

destring price open high low, replace force

destring price_m, replace force

browse price

