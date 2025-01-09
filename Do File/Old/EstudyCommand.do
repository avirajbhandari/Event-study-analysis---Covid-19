clear

cd "C:\Users\avira\Downloads\ASSET\Do File"

sysuse TestRegression

regress energy mkt

gen event_timeline = 0

replace event_timeline = 1 if calendar_date < 12/06/2019

log using "C:\Users\avira\Downloads\##1.smcl"

replace event_timeline = 1 if _n > 160 & _n < 191

estudy energy con_dis cons_stp real_est mat ind health fin inf_tech utility air, datevar(calendar_date) evdate(01232020) dateformat(MDY) lb1(-30) ub1(0) lb2(0) ub2(30) eswlb(-170) eswub(-31) indexlist(mkt)

