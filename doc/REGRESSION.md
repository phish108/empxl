## Linear Regression

### Synopsis

```
REGRESSION(TARGET; INDEPENDENT_VARIABLES)
REGRESSION.RESIDUALS(TARGET; INDEPENDENT_VARIABLES; Koefficients)
```

### Description

The `REGRESSION()` function computes a solution for a linear regression.  Its result vector always starts with the Intercept, followed by the koefficents of each independent variable. Each indepdentent variable must be provided in its own vector. 

The function `REGRESSION.RESIDUALS()` computes the differences between the regression results and the actual data. It expects the regression results as the last parameter. 

The `TARGET` vector must be a single vector. 

The `INDEPENDENT_VARIABLES` is a matrix containing each vector of the model's independent variables. All vectors in `INDEPENDENT_VARIABLES` must have the same length as the `TARGET` vector. 
