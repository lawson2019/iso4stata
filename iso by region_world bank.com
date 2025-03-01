*===============================================================
* Generate region variable based on World Bank classifications
*===============================================================
//Souce: https://datahelpdesk.worldbank.org/knowledgebase/articles/906519-world-bank-country-and-lending-groups
  
gen region = "."

// EAST ASIA AND PACIFIC
local eap "ASM AUS BRN KHM CHN FJI PYF GUM HKG IDN JPN KIR PRK KOR LAO MAC MYS MHL FSM MNG MMR NRU NCL NZL MNP PLW PNG PHL WSM SGP SLB TWN THA TLS TON TUV VUT VNM"
foreach country of local eap {
    replace region = "EAP" if cnt == "`country'"
}

// EUROPE AND CENTRAL ASIA
local eca "ALB AND ARM AUT AZE BLR BEL BIH BGR CHI HRV CYP CZE DNK EST FRO FIN FRA GEO DEU GIB GRC GRL HUN ISL IRL IMN ITA KAZ XKX KGZ LVA LIE LTU LUX MDA MCO MNE NLD MKD NOR POL PRT ROU RUS SMR SRB SVK SVN ESP SWE CHE TJK TUR TKM UKR GBR UZB"
foreach country of local eca {
    replace region = "ECA" if cnt == "`country'"
}

// LATIN AMERICA AND THE CARIBBEAN
local lac "ATG ARG ABW BHS BRB BLZ BOL BRA VGB CYM CHL COL CRI CUB CUW DMA DOM ECU SLV GRD GTM GUY HTI HND JAM MEX NIC PAN PRY PER PRI SXM KNA LCA MAF VCT SUR TTO TCA URY VEN VIR"
foreach country of local lac {
    replace region = "LAC" if cnt == "`country'"
}

// MIDDLE EAST AND NORTH AFRICA
local mena "DZA BHR DJI EGY IRN IRQ ISR JOR KWT LBN LBY MLT MAR OMN QAT SAU SYR TUN ARE PSE YEM"
foreach country of local mena {
    replace region = "MENA" if cnt == "`country'"
}

// NORTH AMERICA
local na "BMU CAN USA"
foreach country of local na {
    replace region = "NA" if cnt == "`country'"
}

// SOUTH ASIA
local sa "AFG BGD BTN IND MDV NPL PAK LKA"
foreach country of local sa {
    replace region = "SA" if cnt == "`country'"
}

// SUB-SAHARAN AFRICA
local ssa "AGO BEN BWA BFA BDI CPV CMR CAF TCD COM COD COG CIV GNQ ERI SWZ ETH GAB GMB GHA GIN GNB KEN LSO LBR MDG MWI MLI MRT MUS MOZ NAM NER NGA RWA STP SEN SYC SLE SOM ZAF SSD SDN TZA TGO UGA ZMB ZWE"
foreach country of local ssa {
    replace region = "SSA" if cnt == "`country'"
}

// Generate numeric version
generate region_n = .
replace region_n = 1 if region == "EAP"  // East Asia & Pacific
replace region_n = 2 if region == "ECA"  // Europe & Central Asia
replace region_n = 3 if region == "LAC"  // Latin America & Caribbean
replace region_n = 4 if region == "MENA" // Middle East & North Africa
replace region_n = 5 if region == "NA"   // North America
replace region_n = 6 if region == "SA"   // South Asia
replace region_n = 7 if region == "SSA"  // Sub-Saharan Africa

// Label variables
label variable region "World Bank Regional Classification"
label variable region_n "World Bank Regional Classification (numeric)"

// Define value labels for numeric categories
label define regions 1 "East Asia & Pacific" 2 "Europe & Central Asia" 3 "Latin America & Caribbean" ///
                    4 "Middle East & North Africa" 5 "North America" 6 "South Asia" 7 "Sub-Saharan Africa"
label values region_n regions
