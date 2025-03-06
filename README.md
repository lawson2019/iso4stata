# iso4stata

[![Stata](https://img.shields.io/badge/Stata%2B-blue.svg)](https://www.stata.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

Standardized temples: Quickly add geographic group labels and macroeconomic series to panel data. Supports **World Bank / UN** standardized classifications for research reproducibility.

**Core Scenarios**：Cross-country panel time series analysis | Regional disparity comparison studies | International organization member country screening

  
> [!IMPORTANT]
> The term **"country" (cnt)**，used interchangeably with **"economy"** in this project,  does not imply political independence but refers to any territory for which authorities report separate social or economic statistics.

---

## 🌐 Available Classification Templates

| Directory             | Function Description                                                     |
|------------------|------------------------------------------------------------|
| `/iso by continent`    | Geographical continent grouping                | 
| `/iso by eu` | Europen Union members grouping include time                           | 
| `/iso by oecd`     | OECD members grouping                                       | 
| `/iso by region_world bank`           |  World Bank region classification                   | 
| `/iso by incomme_world bank`           |  World Bank income classification                   | 

---


## 📌 Notes

1. **ISO3 Format Requirement**：Ensure the country code in the original data conforms to the input type required by the script (recommended to use `iso3c` in `str3` format). 
2. **Time-varying Grouping**：For groups with member country changes (e.g., EU), the `year` variable must explicitly indicate the time dimension.
