# Reference

## Functions

- EMPXL() - Version Information

### Descriptive Statistics

- [STAT.DESCRIBE](STAT_DESCRIBE.md) - core descriptive statistics.
- STAT.DESCRIBE.NOMINAL - compute distributions for nominal scale values
- [STAT.TABLE](STAT_TABLE.md) - creates contingency tables for one or two vectors. Optional with headings.
- QQ.DATA

- [STAT.DESCRIBE.LABELS](STAT_DESCRIBE_LABELS.md) - Helper function for `STAT.DESCRIBE`.
- [STAT.MAD](STAT_MAD.md) - Median absolute deviation (MEDIAN variant of SD)
- [STAT.IQR](STAT_IQR.md) - Interquartile range
- STAT.SE - Standard Error
  

### Inference Statistics

- T.TEST.S(dep_var, indep_var)
- ANOVA.TEST()
- PAIRWISE.T.TEST()
- WILCOXON.TEST() - Wilcoxon-Mann Rank-Sum test (with ties)
- KRUSCAL.WALLIS.TEST()
- DUNN.TEST()
- CHISQ.TEST.S()
- F.TEST.S()
- LEVENE.TEST()
- PAIRWISE.F.TEST()
- NORM.TEST() - Normality Test using ChiSQ.

### Correlation Tests

- CORR.PEARSON()
- CORR.PEARSON.TEST()
- CORR.KENDAL()
- CORR.KENDAL.TEST()
- CORR.SPEARMAN() - Spearman's Correlation Coefficient (Better use KENDAL's tau)
- CORR.CRAMER()
- CORR.CRAMER.TEST()

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
- MATRIX.TO.LONG(matrix) - converts a matrix into a two column longform

### Vector functions

- [CUMSUM](CUMSUM.md) - computes the cumulative sum of a numeric vector
- VLENGTH(vector) - returns the length of a vector irespectively of its orientation.
- VREPEAT(value, n_times) - repeats a value n-times as a column vector
- HREPEAT(value, n_times) - repeats a value n-times as a line vector
- IS.ALL.EQUAL(vector_or_matrix) - returns TRUE if all values are equal
- IS.VECTOR(range) - returns TRUE if the range points to a column or line vector containing the same data type.
- VREVERSE(vector) - reverses the values of a vector
- SEQUENCE.RANGE() - Creates a sequence within a defined intervall
  

### Schema helper function

- [SCHEMA.CHOOSE](SCHEMA_CHOOSE.md) - select variables by the scale of measurement.
- TABLE.SELECT

### Other helper functions

- STAT.SIGN(value) - implements the sign function that returns -1, 0, or 1 for a given value
- STAT.CORRECT.PVALUE(p_value, alternative) - Adjusts a P-Value to the given alternative
- PREP.ALTERNATIVE(alternative) - prepare alternative for internal handling
- STAT.POOLED.VARIANCE

### Coding functions

- MARK.INVALID() - Mark invalid values in vectors
- REMOVE.INVALID(matrix) - removes all lines with empty values and errors (e.g., `#NA`) from a matrix.
- QUICK.CODE() - code values into numbers given a sorted vector of values
- DUMMY.CODING() - Expand a discrete value vector into a matrix of binary values

## Group Functions

Group functions are needed only because the `IFS` family of functions does not work consistently inside LAMBDA and LET functions. This allows us to add a few more (despite being a bit slower than the native) grouping functions.

- [GROUP.COUNT(groups)](GROUP_COUNT.md)
- [GROUP.SUM(values, groups)](GROUP_SUM.md)
- [GROUP.MAD(values, groups)](GROUP_SUM.md)
- [GROUP.MAX(values, groups)](GROUP_SUM.md)
- [GROUP.MEAN(values, groups)](GROUP_SUM.md)
- [GROUP.MEDIAN(values, groups)](GROUP_SUM.md)
- [GROUP.MIN(values, groups)](GROUP_SUM.md)
- [GROUP.IQR(values, groups)](GROUP_SUM.md)
- [GROUP.STDEV(values, groups)](GROUP_SUM.md)
- [GROUP.SE(values, groups)](GROUP_SE.md)

### Regression

- REGRESSION.LINEAR()
- REGRESSION.LINEAR.STATS()
- REGRESSION.LINEAR.RESIDUALS()

### Regression Helper Functions
- RESIDUALS()
