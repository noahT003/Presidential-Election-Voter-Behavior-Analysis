# Presidential Election Voter Behavior Analysis

## Overview
Collect data on the 2024 election to ultimately use in an interactive map. Analyzes 2016, 2020, and the newly cleaned 2024 U.S. presidential election data to investigate voter behavior and ideological trends across election cycles.

## Objective
To identify changes in voting patterns and examine how trends shifted across multiple presidential elections.

## Data
Publicly available government data covering the 2016, 2020, and 2024 election cycles. Excel sheets can be found on state websites.

## Tools Used
Excel, SAS, arcGIS

## Methods
- Data cleaning
- Data visualization
- Statistical Analysis

## Key Findings (for Pennsylvania)
- Republicans are likely to continue their success in Pennsylvania by leveraging support from counties with lower levels of college attainment
- Democrats will need to strengthen their appeal to women and minority populations to increase their competitiveness in Pennsylvania in upcoming elections

## Folders
- data: various excel sheets where analysis / reformatting was conducted. For each file, there is a change log indicating what I did to the original data to obtain my final spreadsheet. Note ElectionResultsPA.csv does not follow this format, and is a csv file of used for my analysis in my SAS file
- code: SAS code for data analysis. 
- documents: posters / slideshows created for presentations of this project

## How to Run
Spreadsheets can open as is. To run my SAS code: ElectionDataPA.sas and ElectionResults.PA must be in the same folder. I named my folder "private", so the line that reads in the data should be changed to accomodate for your folder name. Run code line-by-line to obtain results.

## Notes
Our main outcome for this project was an interactive map with our updated 2024 data on arcGIS online for general use in a course on Political Economy at my university. This is the source of many visualizations on X. Our map is linked here: https://bucknell.maps.arcgis.com/apps/mapviewer/index.html?webmap=cade0fe19ee5498eb5e5873a1596ca16
