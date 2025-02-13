# EJAM v2.4 (February 2025)
- Revised all language based on executive orders, to refer to environmental and residential population data analysis, rather than EJ/EJScreen/etc.
- Revised web links based on EJScreen website being offline
- Some edits made considering github repositories and gh pages may change location or go offline

# EJAM v2.32.1-EJAM (February 2025)
## Bug Fixes
- Fixed metadata warning shown during loading of arrow datasets
- Fixed typos in languages spoken indicators labels
- Improved labeling and legibility of ratio bar plots used in reports and downloads
- Fixed caps to # of points selected, analyzed

## Enhancements
- Expanded tables of indicators shown in community report
- Languages spoken at home, health, community, age
- Added ratio columns to community report as advanced setting and heatmap highlighting optional
- Incorporated `shinytest2` tests for app-based functionality testing
- Implemented mapping for points in `ejam2excel`

## Experimental enhancements
- Added plumber API for `ejam2excel()`
- Added widget to advanced settings
- Proxistat helps build proximity indicator
- Zipcodes vignette
 
## Other
- Refactored community report functions, `app_server.R` script

# EJAM v2.32-EJAM (January 2025)
## New Features + Improvements 
- Enabled automatic download of latest arrow data from ejamdata repo 
- Incorporated public-internal toggles to hide specific UI elements not yet applicable to the public version of EJAM
- Made improvements to maps of polgygons
- Added shapefile upload instructions

## Bug Fixes and Enhancements
- Added `leaflet.extras2` dependency to Imports, instead of Suggests, which is necessary for new installations

# EJAM
-   The [EJAM R package](https://usepa.github.io/EJAM/) is available as an open source resource you can 
    - clone from the [EJAM-open github repository](https://github.com/USEPA/EJAM-open) or 
    - install using the [installation instructions](https://usepa.github.io/EJAM/articles/1_installing.html)
