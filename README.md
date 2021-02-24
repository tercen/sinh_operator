# sinh operator

##### Description

`sinh` operator performs a hyperbolic sine on values

##### Usage

Input projection|.
---|---
`y-axis` | values required to be transformed by the sinh operator
`row`    | channels, for example
`col`    | event, for example

Input parameters|.
---|---
`scale`  | numeric, the scaling factor to use after the sinh transformation, default is 5

Output relations|.
---|---
`sinh`| numeric, output transformation per `row` and `col`.

##### Details

Values are sinh transformated and then a scaling is performed. One data point per cell is required as input. 
```r
sinh(value) * scale
```
A scale of 5 is recommended for cytof measurement and 150 for flowcyto measurements.


##### References

See the `base::sinh`
