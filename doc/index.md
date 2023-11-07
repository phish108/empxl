# Reference

## Functions

### Descriptive Statistics

- STAT.MAD - Mean deviation from the Median (MEDIAN variant of SD)
- STAT.TABLE(vectorA, vectorB_or_heading; heading) - creates contingency tables for one or two vectors. Optional with headings.

### Correlations

- CORR.SPEARMAN - correlation coefficient for ordinal values (Spearman's rho)
- CORR.KENDALL - correlation coefficient for ordinal values (Kendall's tau) (without correction for linearity)

### Comparisons

- WILCOXON.TEST(values, groups) - Wilcoxon-Mann Rank-Sum test (with ties)

### Effect Size

### Power Analysis

### Distribution helpers

- RANDOM.NORM    - Generates n normaly distributed random values using the [Box-Muller-transformation](https://en.wikipedia.org/wiki/Box%E2%80%93Muller_transform)

### Matrix Functions

- MTRIANGLE(size, lower, strict) - creates lower and upper triangle matrices. If strict is TRUE, then the diagonal values are 0.
- MTRACE(matrix) - compute the trace of a matrix

### Other helper functions

- COLSUM(matrix) - calculates the sum of each column in a matrix
- ROWSUM(matrix) - computes the sum of each row in a matrix

- VREPEAT(value, n_times) - repeats a value n-times as a column vector
- HREPEAT(value, n_times) - repeats a value n-times as a line vector

- STAT.SIGN(value) - implements the sign function that returns -1, 0, or 1 for a given value
- IS.EQUAL.VALUES(vector_or_matrix) - returns TRUE if all values are equal

### Internal helper functions

- STAT.CORRECT.PVALUE(p_value, alternative) - Adjusts a P-Value to the given alternative

#### Group Functions

Group functions are needed only because the *FUNCTION*IFS() functions do not work inside LAMBDA and LET functions. This allows us to add a few more (slow) grouping functions.

- GROUP.SUM(values, groups)
- GROUP.MEAN(values, groups)
- GROUP.MEDIAN(values, groups)
- GROUP.MIN(values, groups)
- GROUP.MAX(values, groups)
- GROUP.COUNT(groups)
- GROUP.STDEV(values, groups)
- GROUP.IQR(values, groups)
- GROUP.MAD(values, groups)
