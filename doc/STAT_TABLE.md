# Function STAT.TABLE()

## Synopsis

```
STAT.TABLE(vector_or_matrix, [headings])
STAT.TABLE(vectorA, vectorB, [headings])
```

## Description

Function to create contingency or coocurrance tables. A contingency table contains the counts of each unique value or unique pair of values.

This function has two variants: 

- one vector
- two vectors

The one vector variant simply counts the occurances of the unique values of a vector. The function keeps the general orientation of the vector (either line or column) for the result. 

The two vectors variant counts the frequency of cooccurance of unique values. The result usually serves as input for the `CHISQ.TEST()`. The rows refer to the unique values of the first parameter, the columns refer to the unique values of the second parameter. 

The function works with numeric and text values.

If matrix style ranges are passed to the function, the function will convert them to vectors prior to computing the contingency table.

For **presentation purposes** the function acceps the optional parameter `headings`. If this parameter is `TRUE`, then the function will add one additional row/column to the result containing the unique values for each result.

**IMPORTANT:** The function will *NOT* sort the uniqe values.
