# Reference

## Functions

### Descriptive Statistics

### Correlations

- CORR.SPEARMAN - correlation coefficient for ordinal values (Spearman's rho)
- CORR.KENDALL - correlation coefficient for ordinal values (Kendall's tau) (without correction for linearity)

### Comparisons

- WILCOXON.TEST(values, groups) - Wilcoxon-Mann Rank-Sum test

### Effect Size

### Power Analysis

### Distribution helpers

- RANDOM.NORM    - Generates n normaly distributed random values using the [Box-Muller-transformation](https://en.wikipedia.org/wiki/Box%E2%80%93Muller_transform)
- RANDOM.NORM.MS  - Generates n normaly distributed random values with a given mean and standard deviation

### Other helper functions

- COLSUM(matrix) - calculates the sum of each column in a matrix
- ROWSUM(matrix) - computes the sum of each row in a matrix

- VREPEAT(value, n_times) - repeats a value n-times as a column vector
- HREPEAT(value, n_times) - repeats a value n-times as a line vector

- MTRIAG(size) - creates a triangonal matrix of size with diagnoal values
- MTRIAG.FLEX(size, lower, strict) - creates lower and upper triangle matrices. If strict is TRUE, then the diagonal values are 0.

- STAT.SIGN(value) - implements the sign function that returns -1, 0, or 1 for a given value

### Internal helper functions

#### Group Functions

Group functions are needed because the *FUNCTION*IFS() functions do not work inside LAMBDA and LET functions.

- EMPXL.GROUP.SUM(values, groups)
- EMPXL.GROUP.MEAN(values, groups)
- EMPXL.GROUP.MEDIAN(values, groups)
- EMPXL.GROUP.MIN(values, groups)
- EMPXL.GROUP.MAX(values, groups)
- EMPXL.GROUP.STDEV(values, groups)
