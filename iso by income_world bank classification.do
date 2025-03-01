*======================================================================
* Generate income category variable based on World Bank classifications
* =====================================================================

// Create empty variable
gen income_category = "."

// Afghanistan (AFG)
replace income_category = "L" if cnt == "AFG" & inrange(year, 1987, 2023)

// Albania (ALB)
replace income_category = ".." if cnt == "ALB" & inrange(year, 1987, 1989)
replace income_category = "LM" if cnt == "ALB" & inrange(year, 1990, 1996)
replace income_category = "L" if cnt == "ALB" & inrange(year, 1997, 2000)
replace income_category = "LM" if cnt == "ALB" & inrange(year, 2001, 2009)
replace income_category = "UM" if cnt == "ALB" & inrange(year, 2010, 2023)

// Algeria (DZA)
replace income_category = "UM" if cnt == "DZA" & inrange(year, 1987, 1988)
replace income_category = "LM" if cnt == "DZA" & inrange(year, 1989, 2007)
replace income_category = "UM" if cnt == "DZA" & inrange(year, 2008, 2014)
replace income_category = "LM" if cnt == "DZA" & inrange(year, 2015, 2018)
replace income_category = "UM" if cnt == "DZA" & year == 2023

// American Samoa (ASM)
replace income_category = "H" if cnt == "ASM" & inrange(year, 1987, 1988)
replace income_category = "UM" if cnt == "ASM" & inrange(year, 1989, 2021)
replace income_category = "H" if cnt == "ASM" & inrange(year, 2022, 2023)

// Andorra (AND)
replace income_category = ".." if cnt == "AND" & inrange(year, 1987, 1989)
replace income_category = "H" if cnt == "AND" & inrange(year, 1990, 2023)

// Angola (AGO)
replace income_category = ".." if cnt == "AGO" & year == 1987
replace income_category = "LM" if cnt == "AGO" & inrange(year, 1988, 1994)
replace income_category = "L" if cnt == "AGO" & inrange(year, 1995, 2003)
replace income_category = "LM" if cnt == "AGO" & inrange(year, 2004, 2010)
replace income_category = "UM" if cnt == "AGO" & inrange(year, 2011, 2015)
replace income_category = "LM" if cnt == "AGO" & inrange(year, 2016, 2023)

// Antigua and Barbuda (ATG)
replace income_category = "UM" if cnt == "ATG" & inrange(year, 1987, 2001)
replace income_category = "H" if cnt == "ATG" & inrange(year, 2002, 2003)
replace income_category = "UM" if cnt == "ATG" & inrange(year, 2004, 2008)
replace income_category = "H" if cnt == "ATG" & inrange(year, 2009, 2012)
replace income_category = "UM" if cnt == "ATG" & inrange(year, 2013, 2014)
replace income_category = "H" if cnt == "ATG" & inrange(year, 2015, 2023)

// Argentina (ARG)
replace income_category = "UM" if cnt == "ARG" & inrange(year, 1987, 1988)
replace income_category = "LM" if cnt == "ARG" & inrange(year, 1989, 1990)
replace income_category = "UM" if cnt == "ARG" & inrange(year, 1991, 2017)
replace income_category = "H" if cnt == "ARG" & year == 2018
replace income_category = "UM" if cnt == "ARG" & inrange(year, 2019, 2023)

// Armenia (ARM)
replace income_category = ".." if cnt == "ARM" & inrange(year, 1987, 1990)
replace income_category = "LM" if cnt == "ARM" & inrange(year, 1991, 1992)
replace income_category = "L" if cnt == "ARM" & inrange(year, 1993, 2001)
replace income_category = "LM" if cnt == "ARM" & inrange(year, 2002, 2017)
replace income_category = "UM" if cnt == "ARM" & inrange(year, 2018, 2023)

// Aruba (ABW)
replace income_category = "H" if cnt == "ABW" & inrange(year, 1987, 1988)
replace income_category = "UM" if cnt == "ABW" & inrange(year, 1989, 1990)
replace income_category = "H" if cnt == "ABW" & inrange(year, 1991, 2023)

// Australia (AUS)
replace income_category = "H" if cnt == "AUS" & inrange(year, 1987, 2023)

// Austria (AUT)
replace income_category = "H" if cnt == "AUT" & inrange(year, 1987, 2023)

// Azerbaijan (AZE)
replace income_category = ".." if cnt == "AZE" & inrange(year, 1987, 1990)
replace income_category = "LM" if cnt == "AZE" & inrange(year, 1991, 1992)
replace income_category = "L" if cnt == "AZE" & inrange(year, 1993, 1999)
replace income_category = "LM" if cnt == "AZE" & inrange(year, 2000, 2008)
replace income_category = "UM" if cnt == "AZE" & inrange(year, 2009, 2023)

// Continuing with all other countries in the same pattern...
// The Bahamas (BHS)
replace income_category = "H" if cnt == "BHS" & inrange(year, 1987, 2023)

// Bahrain (BHR)
replace income_category = "H" if cnt == "BHR" & inrange(year, 1987, 1988)
replace income_category = "UM" if cnt == "BHR" & inrange(year, 1989, 2000)
replace income_category = "H" if cnt == "BHR" & inrange(year, 2001, 2023)

// Bangladesh (BGD)
replace income_category = "L" if cnt == "BGD" & inrange(year, 1987, 2014)
replace income_category = "LM" if cnt == "BGD" & inrange(year, 2015, 2023)

// Barbados (BRB)
replace income_category = "UM" if cnt == "BRB" & inrange(year, 1987, 1988)
replace income_category = "H" if cnt == "BRB" & year == 1989
replace income_category = "UM" if cnt == "BRB" & inrange(year, 1990, 2000)
replace income_category = "H" if cnt == "BRB" & year == 2001
replace income_category = "UM" if cnt == "BRB" & inrange(year, 2002, 2005)
replace income_category = "H" if cnt == "BRB" & inrange(year, 2006, 2023)

// Belarus (BLR)
replace income_category = ".." if cnt == "BLR" & inrange(year, 1987, 1990)
replace income_category = "UM" if cnt == "BLR" & inrange(year, 1991, 1992)
replace income_category = "LM" if cnt == "BLR" & inrange(year, 1993, 2006)
replace income_category = "UM" if cnt == "BLR" & inrange(year, 2007, 2023)

// Belgium (BEL)
replace income_category = "H" if cnt == "BEL" & inrange(year, 1987, 2023)

// Belize (BLZ)
replace income_category = "LM" if cnt == "BLZ" & inrange(year, 1987, 2001)
replace income_category = "UM" if cnt == "BLZ" & inrange(year, 2002, 2008)
replace income_category = "LM" if cnt == "BLZ" & inrange(year, 2009, 2012)
replace income_category = "UM" if cnt == "BLZ" & inrange(year, 2013, 2014)
replace income_category = "LM" if cnt == "BLZ" & inrange(year, 2015, 2016)
replace income_category = "UM" if cnt == "BLZ" & inrange(year, 2017, 2023)

// Benin (BEN)
replace income_category = "L" if cnt == "BEN" & inrange(year, 1987, 2019)
replace income_category = "LM" if cnt == "BEN" & inrange(year, 2020, 2023)

// Bermuda (BMU)
replace income_category = "H" if cnt == "BMU" & inrange(year, 1987, 2023)

// Bhutan (BTN)
replace income_category = "L" if cnt == "BTN" & inrange(year, 1987, 2005)
replace income_category = "LM" if cnt == "BTN" & inrange(year, 2006, 2023)

// Bolivia (BOL)
replace income_category = "LM" if cnt == "BOL" & inrange(year, 1987, 2023)

// Bosnia and Herzegovina (BIH)
replace income_category = ".." if cnt == "BIH" & inrange(year, 1987, 1991)
replace income_category = "LM" if cnt == "BIH" & year == 1992
replace income_category = "L" if cnt == "BIH" & inrange(year, 1993, 1997)
replace income_category = "LM" if cnt == "BIH" & inrange(year, 1998, 2007)
replace income_category = "UM" if cnt == "BIH" & inrange(year, 2008, 2023)

// Botswana (BWA)
replace income_category = "LM" if cnt == "BWA" & inrange(year, 1987, 1988)
replace income_category = "UM" if cnt == "BWA" & inrange(year, 1989, 1990)
replace income_category = "LM" if cnt == "BWA" & inrange(year, 1991, 1994)
replace income_category = "UM" if cnt == "BWA" & inrange(year, 1995, 2023)

// Brazil (BRA)
replace income_category = "UM" if cnt == "BRA" & year == 1987
replace income_category = "LM" if cnt == "BRA" & year == 1988
replace income_category = "UM" if cnt == "BRA" & inrange(year, 1989, 2000)
replace income_category = "LM" if cnt == "BRA" & inrange(year, 2001, 2004)
replace income_category = "UM" if cnt == "BRA" & inrange(year, 2005, 2023)

// British Virgin Islands (VGB)
replace income_category = ".." if cnt == "VGB" & inrange(year, 1987, 2014)
replace income_category = "H" if cnt == "VGB" & inrange(year, 2015, 2023)

// Brunei Darussalam (BRN)
replace income_category = "H" if cnt == "BRN" & year == 1987
replace income_category = ".." if cnt == "BRN" & inrange(year, 1988, 1989)
replace income_category = "H" if cnt == "BRN" & inrange(year, 1990, 2023)

// Bulgaria (BGR)
replace income_category = ".." if cnt == "BGR" & inrange(year, 1987, 1988)
replace income_category = "LM" if cnt == "BGR" & inrange(year, 1989, 2005)
replace income_category = "UM" if cnt == "BGR" & inrange(year, 2006, 2022)
replace income_category = "H" if cnt == "BGR" & year == 2023

// Burkina Faso (BFA)
replace income_category = "L" if cnt == "BFA" & inrange(year, 1987, 2023)

// Burundi (BDI)
replace income_category = "L" if cnt == "BDI" & inrange(year, 1987, 2023)

// Cabo Verde (CPV)
replace income_category = ".." if cnt == "CPV" & year == 1987
replace income_category = "LM" if cnt == "CPV" & inrange(year, 1988, 2023)

// Cambodia (KHM)
replace income_category = "L" if cnt == "KHM" & inrange(year, 1987, 2014)
replace income_category = "LM" if cnt == "KHM" & inrange(year, 2015, 2023)

// Cameroon (CMR)
replace income_category = "LM" if cnt == "CMR" & inrange(year, 1987, 1993)
replace income_category = "L" if cnt == "CMR" & inrange(year, 1994, 2003)
replace income_category = "LM" if cnt == "CMR" & inrange(year, 2004, 2023)

// Canada (CAN)
replace income_category = "H" if cnt == "CAN" & inrange(year, 1987, 2023)

// Cayman Islands (CYM)
replace income_category = ".." if cnt == "CYM" & inrange(year, 1987, 1992)
replace income_category = "H" if cnt == "CYM" & inrange(year, 1993, 2023)

// Central African Republic (CAF)
replace income_category = "L" if cnt == "CAF" & inrange(year, 1987, 2023)

// Chad (TCD)
replace income_category = "L" if cnt == "TCD" & inrange(year, 1987, 2023)

// Channel Islands (CHI)
replace income_category = "H" if cnt == "CHI" & inrange(year, 1987, 2023)

// Chile (CHL)
replace income_category = "LM" if cnt == "CHL" & inrange(year, 1987, 1992)
replace income_category = "UM" if cnt == "CHL" & inrange(year, 1993, 2011)
replace income_category = "H" if cnt == "CHL" & inrange(year, 2012, 2023)

// China (CHN)
replace income_category = "L" if cnt == "CHN" & inrange(year, 1987, 1996)
replace income_category = "LM" if cnt == "CHN" & year == 1997
replace income_category = "L" if cnt == "CHN" & year == 1998
replace income_category = "LM" if cnt == "CHN" & inrange(year, 1999, 2009)
replace income_category = "UM" if cnt == "CHN" & inrange(year, 2010, 2023)

// Colombia (COL)
replace income_category = "LM" if cnt == "COL" & inrange(year, 1987, 2007)
replace income_category = "UM" if cnt == "COL" & inrange(year, 2008, 2023)

// Comoros (COM)
replace income_category = "L" if cnt == "COM" & inrange(year, 1987, 2018)
replace income_category = "LM" if cnt == "COM" & inrange(year, 2019, 2023)

// Congo, Dem. Rep. (COD)
replace income_category = "L" if cnt == "COD" & inrange(year, 1987, 2023)

// Congo, Rep. (COG)
replace income_category = "LM" if cnt == "COG" & inrange(year, 1987, 1993)
replace income_category = "L" if cnt == "COG" & inrange(year, 1994, 2003)
replace income_category = "LM" if cnt == "COG" & inrange(year, 2004, 2023)

// Costa Rica (CRI)
replace income_category = "LM" if cnt == "CRI" & inrange(year, 1987, 1999)
replace income_category = "UM" if cnt == "CRI" & inrange(year, 2000, 2023)

// Côte d'Ivoire (CIV)
replace income_category = "LM" if cnt == "CIV" & inrange(year, 1987, 1992)
replace income_category = "L" if cnt == "CIV" & inrange(year, 1993, 2007)
replace income_category = "LM" if cnt == "CIV" & inrange(year, 2008, 2023)

// Croatia (HRV)
replace income_category = ".." if cnt == "HRV" & inrange(year, 1987, 1991)
replace income_category = "LM" if cnt == "HRV" & year == 1992
replace income_category = "UM" if cnt == "HRV" & inrange(year, 1993, 2007)
replace income_category = "H" if cnt == "HRV" & inrange(year, 2008, 2014)
replace income_category = "UM" if cnt == "HRV" & year == 2015
replace income_category = "H" if cnt == "HRV" & inrange(year, 2016, 2023)

// Cuba (CUB)
replace income_category = ".." if cnt == "CUB" & inrange(year, 1987, 1989)
replace income_category = "LM" if cnt == "CUB" & inrange(year, 1990, 2006)
replace income_category = "UM" if cnt == "CUB" & inrange(year, 2007, 2023)

// Curaçao (CUW)
replace income_category = ".." if cnt == "CUW" & inrange(year, 1987, 2009)
replace income_category = "H" if cnt == "CUW" & inrange(year, 2010, 2023)

// Cyprus (CYP)
replace income_category = "UM" if cnt == "CYP" & year == 1987
replace income_category = "H" if cnt == "CYP" & inrange(year, 1988, 2023)

// Czech Republic (CZE)
replace income_category = ".." if cnt == "CZE" & inrange(year, 1987, 1991)
replace income_category = "LM" if cnt == "CZE" & year == 1992
replace income_category = "UM" if cnt == "CZE" & inrange(year, 1993, 2005)
replace income_category = "H" if cnt == "CZE" & inrange(year, 2006, 2023)

// Denmark (DNK)
replace income_category = "H" if cnt == "DNK" & inrange(year, 1987, 2023)

// Djibouti (DJI)
replace income_category = ".." if cnt == "DJI" & inrange(year, 1987, 1989)
replace income_category = "LM" if cnt == "DJI" & inrange(year, 1990, 2023)

// Dominica (DMA)
replace income_category = "LM" if cnt == "DMA" & inrange(year, 1987, 1998)
replace income_category = "UM" if cnt == "DMA" & inrange(year, 1999, 2023)

// Dominican Republic (DOM)
replace income_category = "LM" if cnt == "DOM" & inrange(year, 1987, 2007)
replace income_category = "UM" if cnt == "DOM" & inrange(year, 2008, 2023)

// Ecuador (ECU)
replace income_category = "LM" if cnt == "ECU" & inrange(year, 1987, 2008)
replace income_category = "UM" if cnt == "ECU" & inrange(year, 2009, 2023)

// Egypt (EGY)
replace income_category = "LM" if cnt == "EGY" & inrange(year, 1987, 1988)
replace income_category = "L" if cnt == "EGY" & inrange(year, 1989, 1993)
replace income_category = "LM" if cnt == "LM" & inrange(year, 1994, 2023)

// El Salvador (SLV)
replace income_category = "LM" if cnt == "SLV" & inrange(year, 1987, 2021)
replace income_category = "UM" if cnt == "SLV" & inrange(year, 2022, 2023)

// Equatorial Guinea (GNQ)
replace income_category = "L" if cnt == "GNQ" & inrange(year, 1987, 1996)
replace income_category = "LM" if cnt == "GNQ" & inrange(year, 1997, 1998)
replace income_category = "L" if cnt == "GNQ" & inrange(year, 1999, 2000)
replace income_category = "UM" if cnt == "GNQ" & inrange(year, 2001, 2002)
replace income_category = "H" if cnt == "GNQ" & inrange(year, 2003, 2014)
replace income_category = "UM" if cnt == "GNQ" & inrange(year, 2015, 2023)

// Eritrea (ERI)
replace income_category = ".." if cnt == "ERI" & inrange(year, 1987, 1991)
replace income_category = "L" if cnt == "ERI" & inrange(year, 1992, 2023)

// Estonia (EST)
replace income_category = ".." if cnt == "EST" & inrange(year, 1987, 1990)
replace income_category = "UM" if cnt == "EST" & inrange(year, 1991, 1992)
replace income_category = "LM" if cnt == "EST" & inrange(year, 1993, 1995)
replace income_category = "UM" if cnt == "EST" & inrange(year, 1996, 2005)
replace income_category = "H" if cnt == "EST" & inrange(year, 2006, 2023)

// Eswatini (SWZ)
replace income_category = "LM" if cnt == "SWZ" & inrange(year, 1987, 2023)

// Ethiopia (ETH)
replace income_category = "L" if cnt == "ETH" & inrange(year, 1987, 2023)

// Faroe Islands (FRO)
replace income_category = "H" if cnt == "FRO" & inrange(year, 1987, 2023)

// Fiji (FJI)
replace income_category = "LM" if cnt == "FJI" & inrange(year, 1987, 2006)
replace income_category = "UM" if cnt == "FJI" & inrange(year, 2007, 2009)
replace income_category = "LM" if cnt == "FJI" & inrange(year, 2010, 2011)
replace income_category = "UM" if cnt == "FJI" & inrange(year, 2012, 2023)

// Finland (FIN)
replace income_category = "H" if cnt == "FIN" & inrange(year, 1987, 2023)

// France (FRA)
replace income_category = "H" if cnt == "FRA" & inrange(year, 1987, 2023)

// French Polynesia (PYF)
replace income_category = ".." if cnt == "PYF" & inrange(year, 1987, 1989)
replace income_category = "H" if cnt == "PYF" & inrange(year, 1990, 2023)

// Gabon (GAB)
replace income_category = "UM" if cnt == "GAB" & inrange(year, 1987, 2023)

// Gambia (GMB)
replace income_category = "L" if cnt == "GMB" & inrange(year, 1987, 2023)

// Georgia (GEO)
replace income_category = ".." if cnt == "GEO" & inrange(year, 1987, 1990)
replace income_category = "LM" if cnt == "GEO" & inrange(year, 1991, 1992)
replace income_category = "L" if cnt == "GEO" & inrange(year, 1993, 1996)
replace income_category = "LM" if cnt == "GEO" & inrange(year, 1997, 2014)
replace income_category = "UM" if cnt == "GEO" & year == 2015
replace income_category = "LM" if cnt == "GEO" & inrange(year, 2016, 2017)
replace income_category = "UM" if cnt == "GEO" & inrange(year, 2018, 2023)

// Germany (DEU)
replace income_category = "H" if cnt == "DEU" & inrange(year, 1987, 2023)

// Ghana (GHA)
replace income_category = "L" if cnt == "GHA" & inrange(year, 1987, 2009)
replace income_category = "LM" if cnt == "GHA" & inrange(year, 2010, 2023)

// Gibraltar (GIB)
replace income_category = "UM" if cnt == "GIB" & inrange(year, 1987, 1993)
replace income_category = ".." if cnt == "GIB" & inrange(year, 1994, 2008)
replace income_category = "H" if cnt == "GIB" & year == 2009
replace income_category = ".." if cnt == "GIB" & inrange(year, 2010, 2013)
replace income_category = "H" if cnt == "GIB" & inrange(year, 2014, 2023)

// Greece (GRC)
replace income_category = "UM" if cnt == "GRC" & inrange(year, 1987, 1995)
replace income_category = "H" if cnt == "GRC" & inrange(year, 1996, 2023)

// Greenland (GRL)
replace income_category = "H" if cnt == "GRL" & inrange(year, 1987, 2023)

// Grenada (GRD)
replace income_category = "LM" if cnt == "GRD" & inrange(year, 1987, 1996)
replace income_category = "UM" if cnt == "GRD" & inrange(year, 1997, 2023)

// Guam (GUM)
replace income_category = "H" if cnt == "GUM" & inrange(year, 1987, 1988)
replace income_category = "UM" if cnt == "GUM" & inrange(year, 1989, 1993)
replace income_category = "H" if cnt == "GUM" & inrange(year, 1994, 2023)

// Guatemala (GTM)
replace income_category = "LM" if cnt == "GTM" & inrange(year, 1987, 2016)
replace income_category = "UM" if cnt == "GTM" & inrange(year, 2017, 2023)

// Guinea (GIN)
replace income_category = "L" if cnt == "GIN" & inrange(year, 1987, 2021)
replace income_category = "LM" if cnt == "GIN" & inrange(year, 2022, 2023)

// Guinea-Bissau (GNB)
replace income_category = "L" if cnt == "GNB" & inrange(year, 1987, 2023)

// Guyana (GUY)
replace income_category = "L" if cnt == "GUY" & inrange(year, 1987, 1996)
replace income_category = "LM" if cnt == "GUY" & inrange(year, 1997, 2014)
replace income_category = "UM" if cnt == "GUY" & inrange(year, 2015, 2020)
replace income_category = "H" if cnt == "GUY" & inrange(year, 2021, 2023)

// Haiti (HTI)
replace income_category = "L" if cnt == "HTI" & inrange(year, 1987, 2019)
replace income_category = "LM" if cnt == "HTI" & inrange(year, 2020, 2023)

// Honduras (HND)
replace income_category = "LM" if cnt == "HND" & inrange(year, 1987, 1988)
replace income_category = "L" if cnt == "HND" & inrange(year, 1989, 1996)
replace income_category = "LM" if cnt == "HND" & inrange(year, 1997, 2023)

// Hong Kong SAR, China (HKG)
replace income_category = "H" if cnt == "HKG" & inrange(year, 1987, 2023)

// Hungary (HUN)
replace income_category = "UM" if cnt == "HUN" & inrange(year, 1987, 2005)
replace income_category = "H" if cnt == "HUN" & inrange(year, 2006, 2011)
replace income_category = "UM" if cnt == "HUN" & inrange(year, 2012, 2013)
replace income_category = "H" if cnt == "HUN" & inrange(year, 2014, 2023)

// Iceland (ISL)
replace income_category = "H" if cnt == "ISL" & inrange(year, 1987, 2023)

// India (IND)
replace income_category = "L" if cnt == "IND" & inrange(year, 1987, 2006)
replace income_category = "LM" if cnt == "IND" & inrange(year, 2007, 2023)

// Indonesia (IDN)
replace income_category = "L" if cnt == "IDN" & inrange(year, 1987, 1992)
replace income_category = "LM" if cnt == "IDN" & inrange(year, 1993, 1996)
replace income_category = "L" if cnt == "IDN" & inrange(year, 1997, 2002)
replace income_category = "LM" if cnt == "IDN" & inrange(year, 2003, 2019)
replace income_category = "UM" if cnt == "IDN" & year == 2020
replace income_category = "LM" if cnt == "IDN" & year == 2021
replace income_category = "UM" if cnt == "IDN" & inrange(year, 2022, 2023)

// Iran (IRN)
replace income_category = "UM" if cnt == "IRN" & inrange(year, 1987, 1988)
replace income_category = "LM" if cnt == "IRN" & inrange(year, 1989, 2008)
replace income_category = "UM" if cnt == "IRN" & inrange(year, 2009, 2020)
replace income_category = "LM" if cnt == "IRN" & inrange(year, 2021, 2022)
replace income_category = "UM" if cnt == "IRN" & year == 2023

// Iraq (IRQ)
replace income_category = "UM" if cnt == "IRQ" & inrange(year, 1987, 1988)
replace income_category = "LM" if cnt == "IRQ" & inrange(year, 1989, 2011)
replace income_category = "UM" if cnt == "IRQ" & inrange(year, 2012, 2023)

// Ireland (IRL)
replace income_category = "H" if cnt == "IRL" & inrange(year, 1987, 2023)

// Isle of Man (IMN)
replace income_category = "H" if cnt == "IMN" & year == 1987
replace income_category = "UM" if cnt == "IMN" & inrange(year, 1988, 2001)
replace income_category = "H" if cnt == "IMN" & inrange(year, 2002, 2023)

// Israel (ISR)
replace income_category = "H" if cnt == "ISR" & inrange(year, 1987, 2023)

// Italy (ITA)
replace income_category = "H" if cnt == "ITA" & inrange(year, 1987, 2023)

// Jamaica (JAM)
replace income_category = "LM" if cnt == "JAM" & inrange(year, 1987, 2005)
replace income_category = "UM" if cnt == "JAM" & inrange(year, 2006, 2023)

// Japan (JPN)
replace income_category = "H" if cnt == "JPN" & inrange(year, 1987, 2023)

// Jordan (JOR)
replace income_category = "LM" if cnt == "JOR" & inrange(year, 1987, 2009)
replace income_category = "UM" if cnt == "JOR" & inrange(year, 2010, 2015)
replace income_category = "LM" if cnt == "JOR" & inrange(year, 2016, 2017)
replace income_category = "UM" if cnt == "JOR" & inrange(year, 2018, 2021)
replace income_category = "LM" if cnt == "JOR" & inrange(year, 2022, 2023)

// Kazakhstan (KAZ)
replace income_category = ".." if cnt == "KAZ" & inrange(year, 1987, 1990)
replace income_category = "LM" if cnt == "KAZ" & inrange(year, 1991, 2005)
replace income_category = "UM" if cnt == "KAZ" & inrange(year, 2006, 2023)

// Kenya (KEN)
replace income_category = "L" if cnt == "KEN" & inrange(year, 1987, 2013)
replace income_category = "LM" if cnt == "KEN" & inrange(year, 2014, 2023)

// Kiribati (KIR)
replace income_category = "LM" if cnt == "KIR" & inrange(year, 1987, 2023)

// Korea, Dem. People's Rep. (PRK)
replace income_category = ".." if cnt == "PRK" & inrange(year, 1987, 1989)
replace income_category = "LM" if cnt == "PRK" & inrange(year, 1990, 1997)
replace income_category = "L" if cnt == "PRK" & inrange(year, 1998, 2023)

// Korea, Rep. (KOR)
replace income_category = "UM" if cnt == "KOR" & inrange(year, 1987, 1993)
replace income_category = "H" if cnt == "KOR" & inrange(year, 1994, 1996)
replace income_category = "UM" if cnt == "KOR" & inrange(year, 1997, 1998)
replace income_category = "H" if cnt == "KOR" & inrange(year, 1999, 2023)

// Kosovo (XKX)
replace income_category = ".." if cnt == "XKX" & inrange(year, 1987, 2007)
replace income_category = "LM" if cnt == "XKX" & inrange(year, 2008, 2017)
replace income_category = "UM" if cnt == "XKX" & inrange(year, 2018, 2023)

// Kuwait (KWT)
replace income_category = "H" if cnt == "KWT" & inrange(year, 1987, 2023)

// Kyrgyz Republic (KGZ)
replace income_category = ".." if cnt == "KGZ" & inrange(year, 1987, 1990)
replace income_category = "LM" if cnt == "KGZ" & inrange(year, 1991, 1992)
replace income_category = "L" if cnt == "KGZ" & inrange(year, 1993, 2013)
replace income_category = "LM" if cnt == "KGZ" & inrange(year, 2014, 2023)

// Lao PDR (LAO)
replace income_category = "L" if cnt == "LAO" & inrange(year, 1987, 2010)
replace income_category = "LM" if cnt == "LAO" & inrange(year, 2011, 2023)

// Latvia (LVA)
replace income_category = ".." if cnt == "LVA" & inrange(year, 1987, 1990)
replace income_category = "UM" if cnt == "LVA" & year == 1991
replace income_category = "LM" if cnt == "LVA" & inrange(year, 1992, 1995)
replace income_category = "UM" if cnt == "UM" & inrange(year, 1996, 2011)
replace income_category = "H" if cnt == "LVA" & inrange(year, 2012, 2023)

// Lebanon (LBN)
replace income_category = "LM" if cnt == "LBN" & inrange(year, 1987, 1996)
replace income_category = "UM" if cnt == "LBN" & inrange(year, 1997, 2020)
replace income_category = "LM" if cnt == "LBN" & inrange(year, 2021, 2023)

// Lesotho (LSO)
replace income_category = "L" if cnt == "LSO" & inrange(year, 1987, 2004)
replace income_category = "LM" if cnt == "LSO" & inrange(year, 2005, 2023)

// Liberia (LBR)
replace income_category = "L" if cnt == "LBR" & inrange(year, 1987, 2023)

// Libya (LBY)
replace income_category = "UM" if cnt == "LBY" & inrange(year, 1987, 2023)

// Liechtenstein (LIE)
replace income_category = ".." if cnt == "LIE" & inrange(year, 1987, 1993)
replace income_category = "H" if cnt == "LIE" & inrange(year, 1994, 2023)

// Lithuania (LTU)
replace income_category = ".." if cnt == "LTU" & inrange(year, 1987, 1990)
replace income_category = "UM" if cnt == "LTU" & year == 1991
replace income_category = "LM" if cnt == "LTU" & inrange(year, 1992, 2005)
replace income_category = "UM" if cnt == "LTU" & inrange(year, 2006, 2011)
replace income_category = "H" if cnt == "LTU" & inrange(year, 2012, 2023)

// Luxembourg (LUX)
replace income_category = "H" if cnt == "LUX" & inrange(year, 1987, 2023)

// Macao SAR, China (MAC)
replace income_category = "UM" if cnt == "MAC" & inrange(year, 1987, 1993)
replace income_category = "H" if cnt == "MAC" & inrange(year, 1994, 2023)

// Madagascar (MDG)
replace income_category = "L" if cnt == "MDG" & inrange(year, 1987, 2023)

// Malawi (MWI)
replace income_category = "L" if cnt == "MWI" & inrange(year, 1987, 2023)

// Malaysia (MYS)
replace income_category = "LM" if cnt == "MYS" & inrange(year, 1987, 1991)
replace income_category = "UM" if cnt == "MYS" & inrange(year, 1992, 2023)

// Maldives (MDV)
replace income_category = "L" if cnt == "MDV" & inrange(year, 1987, 1992)
replace income_category = "LM" if cnt == "MDV" & inrange(year, 1993, 2009)
replace income_category = "UM" if cnt == "MDV" & inrange(year, 2010, 2023)

// Mali (MLI)
replace income_category = "L" if cnt == "MLI" & inrange(year, 1987, 2023)

// Malta (MLT)
replace income_category = "UM" if cnt == "MLT" & year == 1987
replace income_category = "H" if cnt == "MLT" & year == 1988
replace income_category = "UM" if cnt == "MLT" & inrange(year, 1989, 1993)
replace income_category = "H" if cnt == "MLT" & inrange(year, 1994, 2023)

// Marshall Islands (MHL)
replace income_category = ".." if cnt == "MHL" & inrange(year, 1987, 1990)
replace income_category = "LM" if cnt == "MHL" & inrange(year, 1991, 2012)
replace income_category = "UM" if cnt == "MHL" & inrange(year, 2013, 2023)

// Mauritania (MRT)
replace income_category = "L" if cnt == "MRT" & inrange(year, 1987, 2009)
replace income_category = "LM" if cnt == "MRT" & year == 2010
replace income_category = "L" if cnt == "MRT" & year == 2011
replace income_category = "LM" if cnt == "MRT" & inrange(year, 2012, 2023)

// Mauritius (MUS)
replace income_category = "LM" if cnt == "MUS" & inrange(year, 1987, 1990)
replace income_category = "UM" if cnt == "MUS" & inrange(year, 1991, 2019)
replace income_category = "H" if cnt == "MUS" & year == 2020
replace income_category = "UM" if cnt == "MUS" & inrange(year, 2021, 2023)

// Mexico (MEX)
replace income_category = "LM" if cnt == "MEX" & inrange(year, 1987, 1988)
replace income_category = "UM" if cnt == "MEX" & inrange(year, 1989, 2023)

// Micronesia, Fed. Sts. (FSM)
replace income_category = ".." if cnt == "FSM" & inrange(year, 1987, 1990)
replace income_category = "LM" if cnt == "FSM" & inrange(year, 1991, 2023)

// Moldova (MDA)
replace income_category = ".." if cnt == "MDA" & inrange(year, 1987, 1990)
replace income_category = "LM" if cnt == "MDA" & inrange(year, 1991, 1992)
replace income_category = "L" if cnt == "MDA" & inrange(year, 1993, 2003)
replace income_category = "LM" if cnt == "MDA" & inrange(year, 2004, 2019)
replace income_category = "UM" if cnt == "MDA" & inrange(year, 2020, 2023)

// Monaco (MCO)
replace income_category = ".." if cnt == "MCO" & inrange(year, 1987, 1993)
replace income_category = "H" if cnt == "MCO" & inrange(year, 1994, 2023)

// Mongolia (MNG)
replace income_category = ".." if cnt == "MNG" & inrange(year, 1987, 1988)
replace income_category = "LM" if cnt == "MNG" & inrange(year, 1989, 1990)
replace income_category = "L" if cnt == "MNG" & inrange(year, 1991, 2005)
replace income_category = "LM" if cnt == "MNG" & inrange(year, 2006, 2021)
replace income_category = "UM" if cnt == "MNG" & inrange(year, 2022, 2023)

// Montenegro (MNE)
replace income_category = ".." if cnt == "MNE" & inrange(year, 1987, 2005)
replace income_category = "UM" if cnt == "MNE" & inrange(year, 2006, 2023)

// Morocco (MAR)
replace income_category = "LM" if cnt == "MAR" & inrange(year, 1987, 2023)

// Mozambique (MOZ)
replace income_category = "L" if cnt == "MOZ" & inrange(year, 1987, 2023)

// Myanmar (MMR)
replace income_category = "L" if cnt == "MMR" & inrange(year, 1987, 2014)
replace income_category = "LM" if cnt == "MMR" & inrange(year, 2015, 2023)

// Namibia (NAM)
replace income_category = ".." if cnt == "NAM" & inrange(year, 1987, 1988)
replace income_category = "LM" if cnt == "NAM" & inrange(year, 1989, 1995)
replace income_category = "UM" if cnt == "NAM" & inrange(year, 1996, 2023)

// Nauru (NRU)
replace income_category = ".." if cnt == "NRU" & inrange(year, 1987, 2014)
replace income_category = "H" if cnt == "NRU" & inrange(year, 2015, 2017)
replace income_category = "UM" if cnt == "NRU" & inrange(year, 2018, 2019)
replace income_category = "H" if cnt == "NRU" & inrange(year, 2020, 2023)

// Nepal (NPL)
replace income_category = "L" if cnt == "NPL" & inrange(year, 1987, 2019)
replace income_category = "LM" if cnt == "NPL" & inrange(year, 2020, 2023)

// Netherlands (NLD)
replace income_category = "H" if cnt == "NLD" & inrange(year, 1987, 2023)

// New Caledonia (NCL)
replace income_category = "UM" if cnt == "NCL" & inrange(year, 1987, 1988)
replace income_category = "H" if cnt == "NCL" & inrange(year, 1989, 2023)

// New Zealand (NZL)
replace income_category = "H" if cnt == "NZL" & inrange(year, 1987, 2023)

// Nicaragua (NIC)
replace income_category = "LM" if cnt == "NIC" & inrange(year, 1987, 1988)
replace income_category = "L" if cnt == "NIC" & inrange(year, 1989, 2004)
replace income_category = "LM" if cnt == "NIC" & inrange(year, 2005, 2023)

// Niger (NER)
replace income_category = "L" if cnt == "NER" & inrange(year, 1987, 2023)

// Nigeria (NGA)
replace income_category = "L" if cnt == "NGA" & inrange(year, 1987, 2007)
replace income_category = "LM" if cnt == "NGA" & inrange(year, 2008, 2023)

// North Macedonia (MKD)
replace income_category = ".." if cnt == "MKD" & inrange(year, 1987, 1991)
replace income_category = "LM" if cnt == "MKD" & inrange(year, 1992, 2007)
replace income_category = "UM" if cnt == "MKD" & inrange(year, 2008, 2023)

// Northern Mariana Islands (MNP)
replace income_category = ".." if cnt == "MNP" & inrange(year, 1987, 1992)
replace income_category = "H" if cnt == "MNP" & inrange(year, 1993, 1998)
replace income_category = "UM" if cnt == "MNP" & inrange(year, 1999, 2006)
replace income_category = "H" if cnt == "MNP" & inrange(year, 2007, 2023)

// Norway (NOR)
replace income_category = "H" if cnt == "NOR" & inrange(year, 1987, 2023)

// Oman (OMN)
replace income_category = "UM" if cnt == "OMN" & inrange(year, 1987, 2006)
replace income_category = "H" if cnt == "OMN" & inrange(year, 2007, 2023)

// Pakistan (PAK)
replace income_category = "L" if cnt == "PAK" & inrange(year, 1987, 2007)
replace income_category = "LM" if cnt == "PAK" & inrange(year, 2008, 2023)

// Palau (PLW)
replace income_category = ".." if cnt == "PLW" & inrange(year, 1987, 1994)
replace income_category = "UM" if cnt == "PLW" & inrange(year, 1995, 2015)
replace income_category = "H" if cnt == "PLW" & inrange(year, 2016, 2019)
replace income_category = "UM" if cnt == "PLW" & inrange(year, 2020, 2021)
replace income_category = "H" if cnt == "PLW" & inrange(year, 2022, 2023)

// Panama (PAN)
replace income_category = "UM" if cnt == "PAN" & year == 1987
replace income_category = "LM" if cnt == "PAN" & year == 1988
replace income_category = "UM" if cnt == "PAN" & inrange(year, 1989, 2017)
replace income_category = "H" if cnt == "PAN" & inrange(year, 2018, 2019)
replace income_category = "UM" if cnt == "PAN" & year == 2020
replace income_category = "H" if cnt == "PAN" & inrange(year, 2021, 2023)

// Papua New Guinea (PNG)
replace income_category = "LM" if cnt == "PNG" & inrange(year, 1987, 2023)

// Paraguay (PRY)
replace income_category = "LM" if cnt == "PRY" & inrange(year, 1987, 2014)
replace income_category = "UM" if cnt == "PRY" & inrange(year, 2015, 2023)

// Peru (PER)
replace income_category = "LM" if cnt == "PER" & inrange(year, 1987, 2007)
replace income_category = "UM" if cnt == "PER" & inrange(year, 2008, 2023)

// Philippines (PHL)
replace income_category = "LM" if cnt == "PHL" & inrange(year, 1987, 2023)

// Poland (POL)
replace income_category = "LM" if cnt == "POL" & inrange(year, 1987, 1994)
replace income_category = "UM" if cnt == "POL" & inrange(year, 1995, 2008)
replace income_category = "H" if cnt == "POL" & inrange(year, 2009, 2023)

// Portugal (PRT)
replace income_category = "UM" if cnt == "PRT" & inrange(year, 1987, 1993)
replace income_category = "H" if cnt == "PRT" & inrange(year, 1994, 2023)

// Puerto Rico (PRI)
replace income_category = "UM" if cnt == "PRI" & inrange(year, 1987, 1988)
replace income_category = "H" if cnt == "PRI" & year == 1989
replace income_category = "UM" if cnt == "PRI" & inrange(year, 1990, 2001)
replace income_category = "H" if cnt == "PRI" & inrange(year, 2002, 2023)

// Qatar (QAT)
replace income_category = "H" if cnt == "QAT" & inrange(year, 1987, 2023)

// Romania (ROU)
replace income_category = "UM" if cnt == "ROU" & inrange(year, 1987, 1988)
replace income_category = "LM" if cnt == "ROU" & inrange(year, 1989, 2004)
replace income_category = "UM" if cnt == "ROU" & inrange(year, 2005, 2018)
replace income_category = "H" if cnt == "ROU" & year == 2019
replace income_category = "UM" if cnt == "ROU" & year == 2020
replace income_category = "H" if cnt == "ROU" & inrange(year, 2021, 2023)

// Russian Federation (RUS)
replace income_category = ".." if cnt == "RUS" & inrange(year, 1987, 1990)
replace income_category = "UM" if cnt == "RUS" & year == 1991
replace income_category = "LM" if cnt == "RUS" & inrange(year, 1992, 2003)
replace income_category = "UM" if cnt == "RUS" & inrange(year, 2004, 2011)
replace income_category = "H" if cnt == "RUS" & inrange(year, 2012, 2014)
replace income_category = "UM" if cnt == "RUS" & inrange(year, 2015, 2022)
replace income_category = "H" if cnt == "RUS" & year == 2023

// Rwanda (RWA)
replace income_category = "L" if cnt == "RWA" & inrange(year, 1987, 2023)

// Samoa (WSM)
replace income_category = "LM" if cnt == "WSM" & inrange(year, 1987, 2014)
replace income_category = "UM" if cnt == "WSM" & inrange(year, 2015, 2018)
replace income_category = "LM" if cnt == "WSM" & inrange(year, 2019, 2023)

// San Marino (SMR)
replace income_category = ".." if cnt == "SMR" & inrange(year, 1987, 1988)
replace income_category = "H" if cnt == "SMR" & inrange(year, 1989, 1993)
replace income_category = ".." if cnt == "SMR" & inrange(year, 1994, 1999)
replace income_category = "H" if cnt == "SMR" & inrange(year, 2000, 2023)

// São Tomé and Principe (STP)
replace income_category = "L" if cnt == "STP" & inrange(year, 1987, 2007)
replace income_category = "LM" if cnt == "STP" & inrange(year, 2008, 2023)

// Saudi Arabia (SAU)
replace income_category = "H" if cnt == "SAU" & inrange(year, 1987, 1988)
replace income_category = "UM" if cnt == "SAU" & inrange(year, 1989, 2003)
replace income_category = "H" if cnt == "SAU" & inrange(year, 2004, 2023)

// Senegal (SEN)
replace income_category = "LM" if cnt == "SEN" & inrange(year, 1987, 1993)
replace income_category = "L" if cnt == "SEN" & inrange(year, 1994, 2015)
replace income_category = "LM" if cnt == "SEN" & inrange(year, 2016, 2023)

// Serbia (SRB)
replace income_category = ".." if cnt == "SRB" & inrange(year, 1987, 2005)
replace income_category = "UM" if cnt == "SRB" & inrange(year, 2006, 2023)

// Seychelles (SYC)
replace income_category = "UM" if cnt == "SYC" & inrange(year, 1987, 2013)
replace income_category = "H" if cnt == "SYC" & inrange(year, 2014, 2023)

// Sierra Leone (SLE)
replace income_category = "L" if cnt == "SLE" & inrange(year, 1987, 2023)

// Singapore (SGP)
replace income_category = "H" if cnt == "SGP" & inrange(year, 1987, 2023)

// Sint Maarten (SXM)
replace income_category = ".." if cnt == "SXM" & inrange(year, 1987, 2009)
replace income_category = "H" if cnt == "SXM" & inrange(year, 2010, 2023)

// Slovak Republic (SVK)
replace income_category = ".." if cnt == "SVK" & inrange(year, 1987, 1991)
replace income_category = "LM" if cnt == "SVK" & inrange(year, 1992, 1993)
replace income_category = "UM" if cnt == "SVK" & inrange(year, 1994, 2006)
replace income_category = "H" if cnt == "SVK" & inrange(year, 2007, 2023)

// Slovenia (SVN)
replace income_category = ".." if cnt == "SVN" & inrange(year, 1987, 1991)
replace income_category = "UM" if cnt == "SVN" & inrange(year, 1992, 1996)
replace income_category = "H" if cnt == "SVN" & inrange(year, 1997, 2023)

// Solomon Islands (SLB)
replace income_category = "L" if cnt == "SLB" & year == 1987
replace income_category = "LM" if cnt == "SLB" & year == 1988
replace income_category = "L" if cnt == "SLB" & inrange(year, 1989, 2001)
replace income_category = "LM" if cnt == "SLB" & inrange(year, 2002, 2023)

// Somalia (SOM)
replace income_category = "L" if cnt == "SOM" & inrange(year, 1987, 2023)

// South Africa (ZAF)
replace income_category = "LM" if cnt == "ZAF" & year == 1987
replace income_category = "UM" if cnt == "ZAF" & year == 1988
replace income_category = "UM" if cnt == "ZAF" & inrange(year, 1989, 2023)

// South Sudan (SSD)
replace income_category = ".." if cnt == "SSD" & inrange(year, 1987, 2010)
replace income_category = "LM" if cnt == "SSD" & year == 2011
replace income_category = "L" if cnt == "SSD" & inrange(year, 2012, 2023)

// Spain (ESP)
replace income_category = "H" if cnt == "ESP" & inrange(year, 1987, 2023)

// Sri Lanka (LKA)
replace income_category = "L" if cnt == "LKA" & inrange(year, 1987, 1996)
replace income_category = "LM" if cnt == "LKA" & inrange(year, 1997, 2018)
replace income_category = "UM" if cnt == "LKA" & year == 2019
replace income_category = "LM" if cnt == "LKA" & inrange(year, 2020, 2023)

// St. Kitts and Nevis (KNA)
replace income_category = "UM" if cnt == "KNA" & inrange(year, 1987, 2011)
replace income_category = "H" if cnt == "KNA" & inrange(year, 2012, 2023)

// St. Lucia (LCA)
replace income_category = "LM" if cnt == "LCA" & inrange(year, 1987, 1992)
replace income_category = "UM" if cnt == "LCA" & inrange(year, 1993, 2023)

// St. Martin (French part) (MAF)
replace income_category = ".." if cnt == "MAF" & inrange(year, 1987, 2009)
replace income_category = "H" if cnt == "MAF" & inrange(year, 2010, 2023)

// St. Vincent and the Grenadines (VCT)
replace income_category = "LM" if cnt == "VCT" & inrange(year, 1987, 2001)
replace income_category = "UM" if cnt == "VCT" & inrange(year, 2002, 2023)

// Sudan (SDN)
replace income_category = "L" if cnt == "SDN" & inrange(year, 1987, 2006)
replace income_category = "LM" if cnt == "SDN" & inrange(year, 2007, 2018)
replace income_category = "L" if cnt == "SDN" & inrange(year, 2019, 2023)

// Suriname (SUR)
replace income_category = "UM" if cnt == "SUR" & inrange(year, 1987, 1990)
replace income_category = "LM" if cnt == "SUR" & inrange(year, 1991, 2006)
replace income_category = "UM" if cnt == "SUR" & inrange(year, 2007, 2023)

// Sweden (SWE)
replace income_category = "H" if cnt == "SWE" & inrange(year, 1987, 2023)

// Switzerland (CHE)
replace income_category = "H" if cnt == "CHE" & inrange(year, 1987, 2023)

// Syrian Arab Republic (SYR)
replace income_category = "LM" if cnt == "SYR" & inrange(year, 1987, 2011)
replace income_category = "L" if cnt == "SYR" & inrange(year, 2012, 2023)

// Taiwan, China (TWN)
replace income_category = "H" if cnt == "TWN" & inrange(year, 1987, 2023)

// Tajikistan (TJK)
replace income_category = ".." if cnt == "TJK" & inrange(year, 1987, 1990)
replace income_category = "LM" if cnt == "TJK" & inrange(year, 1991, 1992)
replace income_category = "L" if cnt == "TJK" & inrange(year, 1993, 2013)
replace income_category = "LM" if cnt == "TJK" & inrange(year, 2014, 2023)

// Tanzania (TZA)
replace income_category = "L" if cnt == "TZA" & inrange(year, 1987, 2019)
replace income_category = "LM" if cnt == "TZA" & inrange(year, 2020, 2023)

// Thailand (THA)
replace income_category = "LM" if cnt == "THA" & inrange(year, 1987, 2010)
replace income_category = "UM" if cnt == "THA" & inrange(year, 2011, 2023)

// Timor-Leste (TLS)
replace income_category = ".." if cnt == "TLS" & inrange(year, 1987, 2001)
replace income_category = "L" if cnt == "TLS" & inrange(year, 2002, 2006)
replace income_category = "LM" if cnt == "TLS" & inrange(year, 2007, 2023)

// Togo (TGO)
replace income_category = "L" if cnt == "TGO" & inrange(year, 1987, 2023)

// Tonga (TON)
replace income_category = "LM" if cnt == "TON" & inrange(year, 1987, 2011)
replace income_category = "UM" if cnt == "TON" & inrange(year, 2012, 2014)
replace income_category = "LM" if cnt == "TON" & year == 2015
replace income_category = "UM" if cnt == "TON" & inrange(year, 2016, 2023)

// Trinidad and Tobago (TTO)
replace income_category = "UM" if cnt == "TTO" & inrange(year, 1987, 2005)
replace income_category = "H" if cnt == "TTO" & inrange(year, 2006, 2023)

// Tunisia (TUN)
replace income_category = "LM" if cnt == "TUN" & inrange(year, 1987, 2009)
replace income_category = "UM" if cnt == "TUN" & inrange(year, 2010, 2015)
replace income_category = "LM" if cnt == "TUN" & inrange(year, 2016, 2023)

// Türkiye (TUR)
replace income_category = "LM" if cnt == "TUR" & inrange(year, 1987, 2003)
replace income_category = "UM" if cnt == "TUR" & inrange(year, 2004, 2023)

// Turkmenistan (TKM)
replace income_category = ".." if cnt == "TKM" & inrange(year, 1987, 1990)
replace income_category = "LM" if cnt == "TKM" & inrange(year, 1991, 1992)
replace income_category = "L" if cnt == "TKM" & inrange(year, 1993, 1999)
replace income_category = "LM" if cnt == "TKM" & inrange(year, 2000, 2011)
replace income_category = "UM" if cnt == "UM" & inrange(year, 2012, 2023)

// Turks and Caicos Islands (TCA)
replace income_category = ".." if cnt == "TCA" & inrange(year, 1987, 2007)
replace income_category = "H" if cnt == "TCA" & inrange(year, 2008, 2023)

// Tuvalu (TUV)
replace income_category = ".." if cnt == "TUV" & inrange(year, 1987, 2008)
replace income_category = "LM" if cnt == "TUV" & inrange(year, 2009, 2010)
replace income_category = "UM" if cnt == "TUV" & inrange(year, 2011, 2023)

// Uganda (UGA)
replace income_category = "L" if cnt == "UGA" & inrange(year, 1987, 2023)

// Ukraine (UKR)
replace income_category = ".." if cnt == "UKR" & inrange(year, 1987, 1990)
replace income_category = "LM" if cnt == "UKR" & inrange(year, 1991, 2017)
replace income_category = "UM" if cnt == "UKR" & year == 2023

// United Arab Emirates (ARE)
replace income_category = "H" if cnt == "ARE" & inrange(year, 1987, 2023)

// United Kingdom (GBR)
replace income_category = "H" if cnt == "GBR" & inrange(year, 1987, 2023)

// United States (USA)
replace income_category = "H" if cnt == "USA" & inrange(year, 1987, 2023)

// Uruguay (URY)
replace income_category = "UM" if cnt == "URY" & inrange(year, 1987, 2011)
replace income_category = "H" if cnt == "URY" & inrange(year, 2012, 2023)

// Uzbekistan (UZB)
replace income_category = ".." if cnt == "UZB" & inrange(year, 1987, 1990)
replace income_category = "LM" if cnt == "UZB" & inrange(year, 1991, 2023)

// Vanuatu (VUT)
replace income_category = "LM" if cnt == "VUT" & inrange(year, 1987, 2023)

// Venezuela (VEN)
replace income_category = "UM" if cnt == "VEN" & inrange(year, 1987, 2018)

// Vietnam (VNM)
replace income_category = "L" if cnt == "VNM" & inrange(year, 1987, 2008)
replace income_category = "LM" if cnt == "VNM" & inrange(year, 2009, 2023)

// Virgin Islands (U.S.) (VIR)
replace income_category = "H" if cnt == "VIR" & inrange(year, 1987, 2023)

// West Bank and Gaza (PSE)
replace income_category = ".." if cnt == "PSE" & inrange(year, 1987, 1993)
replace income_category = "LM" if cnt == "PSE" & inrange(year, 1994, 2021)
replace income_category = "UM" if cnt == "PSE" & year == 2022
replace income_category = "LM" if cnt == "PSE" & year == 2023

// Yemen (YEM)
replace income_category = "LM" if cnt == "YEM" & inrange(year, 1987, 1988)
replace income_category = "LM" if cnt == "YEM" & inrange(year, 1989, 1990)
replace income_category = "L" if cnt == "YEM" & inrange(year, 1991, 2023)

// Zambia (ZMB)
replace income_category = "L" if cnt == "ZMB" & inrange(year, 1987, 2010)
replace income_category = "LM" if cnt == "ZMB" & inrange(year, 2011, 2019)
replace income_category = "L" if cnt == "ZMB" & year == 2020
replace income_category = "LM" if cnt == "ZMB" & inrange(year, 2021, 2023)

// Zimbabwe (ZWE)
replace income_category = "LM" if cnt == "ZWE" & inrange(year, 1987, 1988)
replace income_category = "L" if cnt == "ZWE" & inrange(year, 1989, 2017)
replace income_category = "LM" if cnt == "ZWE" & inrange(year, 2018, 2023)

// Label the variable
label variable income_category "World Bank Income Classification (L=Low, LM=Lower Middle, UM=Upper Middle, H=High)"
