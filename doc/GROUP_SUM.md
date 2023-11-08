# Grouped values

## Synopsis

```
GROUP.SUM(values, groupvector)
GROUP.MAX(values, groupvector)
GROUP.MIN(values, groupvector)
GROUP.MEAN(values, groupvector)
GROUP.SD(values, groupvector)
GROUP.MEDIAN(values, groupvector)
GROUP.IQR(values, groupvector)
GROUP.MAD(value, groupvector)
```

## Description

Family of functions for grouped statistics.

Each function takes two vectors. The first vector is the values vector. The second vector is the group vector. The group vector is a discrete value vector that defines groups of values. The grouped function is ran separately for each group defined in the group vector. 

The result of each function within this family has always the same length as the number of groups defined in the groupvector.

All functions within this family are `LAMBDA` and `LET` safe and can be used with prior computations. 

**IMPORTANT:** Both vectors need to be of the same length!

- GROUP.SUM() runs the sum of the values in each group. This is the `LET` safe variant of `SUMIFS()`.
- GROUP.MAX() produces the maximum value for each group. This is the `LET` safe variant of `MAXIFS()`.
- GROUP.MIN() produces the minimum value for each group.  This is the `LET` safe variant of `MINIFS()`.
- GROUP.MEAN() produces the mean value of each group. This is the `LET` safe variant of `AVERAGEIFS()`.

The native Excel functions `AVERAGEIFS()`, `MAXIFS()`,  `MINIFS()`, and `SUMIFS()` can be used only with values that refer to a worksheet range. For computed values these functions (within `LET` functions) these functions will return `#VALUE!` errors.

The `GROUP` versions defer from the `IFS`-variants with respect to the following points: 

1. There is (currently) only one grouping vector.
2. The conditional criteria is always computed from the groupvector. 
3. No partial logical statements are possible.

**IMPORTANT:** The `GROUP.` family of functions will be ***less performant*** that the related native `IFS`-functions. They should be used only in cases where the native functions are unavailable (i.e., inside `LET` functions).

Additionally, there are convinience functions following the same principle, that are relevant for statistics, but missing in Excel.

- GROUP.SD() produces the standard deviation (sd) of each group. 
- GROUP.MEDIAN() produces the median of each group.
- GROUP.IQR() calculates the interquartile range for each group using [`STAT.IQR()`](STAT_IQR.md).
- GROUP.MAD() computes the median absolute deviation of each group using [`STAT.MAD()`](STAT_MAD.md).
