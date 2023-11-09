# Reference

## Functions

### Descriptive Statistics

- [STAT.DESCRIBE](STAT_DESCRIBE.md) - core descriptive statistics
- [STAT.MAD](STAT_MAD.md) - Median absolute deviation (MEDIAN variant of SD)
- [STAT.IQR](STAT_IQR.md) - Interquartile range
- [STAT.TABLE](STAT_TABLE.md) - creates contingency tables for one or two vectors. Optional with headings.

### Correlations

- [STAT.TABLE](STAT_TABLE.md) - create contingeny tables for one or two vectors. Optionally with headings.

- CORR.SPEARMAN - correlation coefficient for ordinal values (Spearman's rho)
- CORR.KENDALL - correlation coefficient for ordinal values (Kendall's tau) (without correction for linearity)

### Comparisons

- WILCOXON.TEST(values, groups) - Wilcoxon-Mann Rank-Sum test (with ties)

### Effect Size

### Power Analysis

### Distribution helpers

- RANDOM.NORM    - Generates n normaly distributed random values using the [Box-Muller-transformation](https://en.wikipedia.org/wiki/Box%E2%80%93Muller_transform)

### Matrix Functions

- [MDIM(matrix)](MDIM.md) - returns the dimensions of a matrix
- MTRIANGLE(size, lower, strict) - creates lower and upper triangle matrices. If strict is TRUE, then the diagonal values are 0.
- MTRACE(matrix) - compute the trace of a matrix
- [COLSUM(matrix)](COLSUM.md) - calculates the sum of each column in a matrix
- [ROWSUM(matrix)](COLSUM.md) - computes the sum of each row in a matrix

### Vector functions

- [CUMSUM](CUMSUM.md) - computes the cumulative sum of a numeric vector
- VREPEAT(value, n_times) - repeats a value n-times as a column vector
- HREPEAT(value, n_times) - repeats a value n-times as a line vector
- IS.ALL.EQUAL(vector_or_matrix) - returns TRUE if all values are equal

### Other helper functions

- STAT.SIGN(value) - implements the sign function that returns -1, 0, or 1 for a given value
- STAT.CORRECT.PVALUE(p_value, alternative) - Adjusts a P-Value to the given alternative
- PREP.ALTERNATIVE(alternative) - prepare alternative for internal handling

#### Group Functions

Group functions are needed only because the `IFS` family of functions does not work consistently inside LAMBDA and LET functions. This allows us to add a few more (despite being a bit slower than the native) grouping functions.

Counting

- [GROUP.COUNT(groups)](GROUP_COUNT.md)

Aggregations

- [GROUP.SUM(values, groups)](GROUP_SUM.md)
- [GROUP.MAD(values, groups)](GROUP_SUM.md)
- [GROUP.MAX(values, groups)](GROUP_SUM.md)
- [GROUP.MEAN(values, groups)](GROUP_SUM.md)
- [GROUP.MEDIAN(values, groups)](GROUP_SUM.md)
- [GROUP.MIN(values, groups)](GROUP_SUM.md)
- [GROUP.IQR(values, groups)](GROUP_SUM.md)
- [GROUP.STDEV(values, groups)](GROUP_SUM.md)
