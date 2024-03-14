# Function SCHEMA.CHOOSE()

## Synopsis

```
SCHEMA.CHOOSE(data; schema_scales; scale_type)
```

## Description

This function selects the variables of the given `scale_type` in data. 

Allowed `scale_types` are `metric`, `ordinal`, `likert`, `continuous`, or `kontinuierlich` or any abbreviations.

This function assumes that `data` has as many columns as the `schema_scales` has rows and that the columns are in the same order as the schema rows. 

If `data` has multiple clumns, `SCHEMA.CHOOSE()` "chooses" those vectors with a matching `scale_type`. The result will be a matrix. This matrix can serve as input for functions such as `STAT.DESCRIBE()`. 

If `data` has a single column, the matching rows are selected. In this case it needs to have as many rows as `schema_scales`. 

