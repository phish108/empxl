# empxl 

A collection of statistical tests written using pure Excel functions

## Rationale

This collection of pure Excel functions aims at students and practitioners who want to use basic statistical tests in excel.

This project aims at a macro-free set of basic functions using the Excel 365 features without python, extensions or VBA macros. 

## How to use

1. Download a release version
2. Create a fresh worksheet from the empxl-template
3. Import your data
4. Use the functions

## Implemented Features

- Matrix and vector convinience functions 
- LAMBDA-safe group functions

## Build manually 

**Important:** Currently, the code builds on the German Naming of Excel formula. Therefore, **Building the template manually requires Excel's German edition**. This will change in one of the upcomin editions.

**Important:** It is not recommended, to use the formula in the `src` folder directly. Because these formula are indented, the extra whitespace cause Excel to misbehave.

1. Run the `bin/compile.sh` script to strip extra whitespaces from the source formulas. This creates a `compile`-folder with clean versions of the formula.
2. Open a fresh Excel workbook. 
3. Save the workbook as an Excel template (`.xlst`)
4. Open the name manager in the Formula ribbon.
5. Add the functions name by name.

The Name Manager has a tendency to crash excel, randomly. Therefore, it is recommended to close the name manager during the building process and save the workbook to disk.
