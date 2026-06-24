# Function: `GROUP.COUNT()` 

# SYNOPSIS 

```
GROUP.COUNT(groups;[withlabels])
```

# DESCRIPTION 

Counts the n for each group in the provided group vector. 

Get the group count with labels, set `withlabels` to TRUE.

This is the `LET` safe variant of `COUNTIFS()`.

The `GROUP.COUNT` defers from its `IFS`-variant with respect to the following points: 

1. There is (currently) only one grouping vector.
2. The conditional criteria is always computed from the groupvector. 
3. No partial logical statements are possible.

## Performance notes 

The `GROUP.COUNT` function will be ***less performant*** that its native counterpart. It should be 
used only in cases where the native function is unavailable (i.e., inside `LET` functions).

## Examples

```
=GROUP.COUNT(A2#)
=GROUP.COUNT(A2#; TRUE)
```
