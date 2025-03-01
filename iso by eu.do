*===================
* ISO by EU members
*===================

gen eu = 0 

replace eu = 1 if cnt == "DEU" & year >= 1958
replace eu = 1 if cnt == "FRA" & year >= 1958
replace eu = 1 if cnt == "ITA" & year >= 1958
replace eu = 1 if cnt == "BEL" & year >= 1958
replace eu = 1 if cnt == "NLD" & year >= 1958
replace eu = 1 if cnt == "LUX" & year >= 1958
replace eu = 1 if cnt == "DNK" & year >= 1973
replace eu = 1 if cnt == "IRL" & year >= 1973
replace eu = 1 if cnt == "GBR" & year >= 1973 & year < 2020
replace eu = 1 if cnt == "GRC" & year >= 1981
replace eu = 1 if cnt == "ESP" & year >= 1986
replace eu = 1 if cnt == "PRT" & year >= 1986
replace eu = 1 if cnt == "AUT" & year >= 1995
replace eu = 1 if cnt == "SWE" & year >= 1995
replace eu = 1 if cnt == "FIN" & year >= 1995
replace eu = 1 if cnt == "CYP" & year >= 2004
replace eu = 1 if cnt == "CZE" & year >= 2004
replace eu = 1 if cnt == "EST" & year >= 2004
replace eu = 1 if cnt == "HUN" & year >= 2004
replace eu = 1 if cnt == "LTU" & year >= 2004
replace eu = 1 if cnt == "LVA" & year >= 2004
replace eu = 1 if cnt == "MLT" & year >= 2004
replace eu = 1 if cnt == "POL" & year >= 2004
replace eu = 1 if cnt == "SVK" & year >= 2004
replace eu = 1 if cnt == "SVN" & year >= 2004
replace eu = 1 if cnt == "BGR" & year >= 2007
replace eu = 1 if cnt == "ROU" & year >= 2007
replace eu = 1 if cnt == "HRV" & year >= 2013
