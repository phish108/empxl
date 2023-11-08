# Function STAT.DESCRIBE()

## Synopsis

```
STAT.DESCRIBE(data; [variable_names]; [type])
```

## Description

This function takes in a matrix or table of **numerical vectors** and computes the core descriptive metrices for each vector (**column**) within the provided range.

**IMPORTANT:** the variables **MUST** be provided as columns. Rowwise data must be transposed before passing as data.

**IMPORTANT:** The data **MUST NOT** include any column names. 

The result columns have the following meaning:

1. Name or column ID.  the column ID is only used of `variable_names` are not present. 
2. The number of values (n)
3. Mean
4. Sample SD (standard deviation)
5. Standard error of the mean
6. Minimum value
7. Median
8. Maximum value
9. Interquartile range
10. Median absolute diviation (MAD)

The parameter `type` can be either `metric`, `ordinal`, `likert`, `continuous`, or `kontinuierlich` or any abreviation of those types. This defines the scaling of the provided variables. For `ordinal` scales the output is reduced to 1, 2, 6 - 10.
