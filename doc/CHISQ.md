## Chi-Squred Functions

### Synopsis

### Chi-Squared statistic
```
STAT.CHIQU(V1, V2)
```

### Cramver's V

```
CORR.CRAMER(V1, V2)
```

### Chi-Squared Test of Independence

```
CHIQU.TEST2(Var1, Var2)
CHIQU.TEST2.X(Cont_Tabelle)
CHIQU.TEST2.HEADER()
```

## Description

A set of functions related to ch-squared statistics. 

The function `STAT.CHIQU()` computes the chi-Statistic for two variables. That can be used with Excel's native chi-square functions `CHIQU.VERT()` or `CHIQU.VERT.RE()`.

The function `CORR.CRAMER()` computes [Cramér's V](https://en.wikipedia.org/wiki/Cram%C3%A9r%27s_V) from two variables. Cramér's V is consistent with other correlation coefficients.

The functions `CHIQU.TEST2()` and `CHIQU.TEST2.X()` compute the chi-squared test of independence. `CHIQU.TEST2()` computes the test for two raw variables. `CHIQU.TEST2.X()` computes the test for a contingency table. Both functions compute the degree's of freedom and the appropriate p-value. 

The function `CHIQU.TEST2.HEADER()` produces the headings for the values. 