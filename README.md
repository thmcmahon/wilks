Wilks points calculator in R
============================

This package contains one function `wilks` that calculates wilks points.

According to [wikipedia](https://en.wikipedia.org/wiki/Wilks_Coefficient), the
Wilks Coefficient or Wilks Formula is a coefficient that can be used to measure
the strength of a powerlifter against other powerlifters despite the different
weights of the lifters. Robert Wilks, CEO of Powerlifting Australia, is the
author of the formula.

### Formula

The following equation is used to calculate the Wilks Coefficient. The total
weight lifted is multiplied by the Coefficient to find the standard amount
lifted normalised across all body weights.

<img src="https://wikimedia.org/api/rest_v1/media/math/render/svg/97274a51d2d3213a9ab7f8a98d91fd6eb0c23e81" width="300">

### Usage

```{r}
wilks(83, 450, 'male')
```
### License

BSD License
