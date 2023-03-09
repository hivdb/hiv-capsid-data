---
title: "Capsid position correlation"
output:
  html_document:
    keep_md: yes
---

Report generated at: 03/08/2023 10:54 PM PDT



## Meaning of correlation_data.csv

- pos: all rows are calculated by each postion of capsid
- Entropy: entropy of mutations >= 0.1%
- Subtype Chi-square test was calculated by contigency table of subtypes and mutations >= 0.1% in any subtype.
  - Subtype Chi-square
  - Subtype Chi-square rank: Subtype chi-square rank number
- HLA References: Number of HLA References
- HLA Chi-square was calculated by the contigency table of mutations and HLA coexist or not.
  - HLA Chi-square sum: sum of HLA Chi-square test by position
  - HLA Chi-square median: median of HLA Chi-square test by position
  - HLA Chi-square mean: mean of HLA Chi-square test by position


## Subtype chi-square test rank and #HLA Reference, regression

```
## 
## Call:
## lm(formula = Entropy ~ subtype_rank + HLA, data = df)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -0.56385 -0.12690 -0.02958  0.13388  1.19403 
## 
## Coefficients:
##                Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  -0.1338762  0.0311620  -4.296 2.57e-05 ***
## subtype_rank  0.0020442  0.0002837   7.206 8.36e-12 ***
## HLA           0.1178779  0.0108985  10.816  < 2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.2441 on 228 degrees of freedom
## Multiple R-squared:  0.6424,	Adjusted R-squared:  0.6393 
## F-statistic: 204.8 on 2 and 228 DF,  p-value: < 2.2e-16
```

```
##                     2.5 %       97.5 %
## (Intercept)  -0.195278423 -0.072473935
## subtype_rank  0.001485233  0.002603209
## HLA           0.096403228  0.139352640
```

## Subtype chi-square test rank and #HLA Reference with interaction, regression

```
## 
## Call:
## lm(formula = Entropy ~ subtype_rank * HLA, data = df)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -0.48690 -0.10966 -0.02180  0.08262  1.13432 
## 
## Coefficients:
##                    Estimate Std. Error t value Pr(>|t|)    
## (Intercept)      -0.0826202  0.0268265  -3.080  0.00233 ** 
## subtype_rank      0.0016648  0.0002426   6.862 6.38e-11 ***
## HLA              -0.2973392  0.0439839  -6.760 1.15e-10 ***
## subtype_rank:HLA  0.0021558  0.0002233   9.654  < 2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.206 on 227 degrees of freedom
## Multiple R-squared:  0.7465,	Adjusted R-squared:  0.7431 
## F-statistic: 222.8 on 3 and 227 DF,  p-value: < 2.2e-16
```

```
##                         2.5 %       97.5 %
## (Intercept)      -0.135481059 -0.029759398
## subtype_rank      0.001186735  0.002142787
## HLA              -0.384008123 -0.210670364
## subtype_rank:HLA  0.001715745  0.002595809
```

## Subtype chi-square test and #HLA Reference, Rfit

```
## Call:
## rfit.default(formula = Entropy ~ subtype + HLA, data = df)
## 
## Coefficients:
##                Estimate  Std. Error t.value p.value    
## (Intercept) -5.8438e-17  1.1234e-03   0.000       1    
## subtype      6.2512e-05  5.4316e-07 115.090  <2e-16 ***
## HLA          7.6848e-02  1.2307e-03  62.444  <2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Multiple R-squared (Robust): 0.9269855 
## Reduction in Dispersion Test: 1447.334 p-value: 0
```

```
##             2.5 % 97.5 %
## (Intercept)    NA     NA
## subtype        NA     NA
## HLA            NA     NA
```

## Subtype chi-square test and #HLA Reference with interaction, Rfit

```
## Call:
## rfit.default(formula = Entropy ~ subtype * HLA, data = df)
## 
## Coefficients:
##                Estimate  Std. Error t.value p.value    
## (Intercept)  0.0000e+00  1.2336e-03   0.000       1    
## subtype      7.2086e-05  8.0823e-07  89.190  <2e-16 ***
## HLA          7.9148e-02  1.4551e-03  54.392  <2e-16 ***
## subtype:HLA -2.9382e-06  2.3027e-07 -12.760  <2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Multiple R-squared (Robust): 0.9287019 
## Reduction in Dispersion Test: 985.6047 p-value: 0
```

```
##             2.5 % 97.5 %
## (Intercept)    NA     NA
## subtype        NA     NA
## HLA            NA     NA
## subtype:HLA    NA     NA
```

## Subtype chi-square test and HLA chi-square test mean, Rfit
Positions without HLA Chi-square test were excluded.

```
## Call:
## rfit.default(formula = Entropy ~ subtype + HLA, data = df)
## 
## Coefficients:
##                Estimate  Std. Error t.value   p.value    
## (Intercept)  2.5159e-01  4.2381e-02  5.9364 1.361e-07 ***
## subtype      6.3209e-05  4.9850e-06 12.6799 < 2.2e-16 ***
## HLA         -6.1091e-04  8.5152e-04 -0.7174    0.4758    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Multiple R-squared (Robust): 0.6188825 
## Reduction in Dispersion Test: 51.15167 p-value: 0
```

```
##             2.5 % 97.5 %
## (Intercept)    NA     NA
## subtype        NA     NA
## HLA            NA     NA
```

## Subtype chi-square test and HLA chi-square test mean with interaction, Rfit
Positions without HLA Chi-square test were excluded.

```
## Call:
## rfit.default(formula = Entropy ~ subtype * HLA, data = df)
## 
## Coefficients:
##                Estimate  Std. Error t.value   p.value    
## (Intercept)  2.0740e-01  5.1829e-02  4.0015 0.0001705 ***
## subtype      7.1629e-05  6.9214e-06 10.3489   3.9e-15 ***
## HLA          7.6919e-04  1.0669e-03  0.7210 0.4736272    
## subtype:HLA -2.3914e-07  1.2242e-07 -1.9535 0.0552818 .  
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Multiple R-squared (Robust): 0.6239422 
## Reduction in Dispersion Test: 34.28943 p-value: 0
```

```
##             2.5 % 97.5 %
## (Intercept)    NA     NA
## subtype        NA     NA
## HLA            NA     NA
## subtype:HLA    NA     NA
```

## Subtype chi-square test and HLA chi-square test sum, Rfit
Positions without HLA Chi-square test were excluded.

```
## Call:
## rfit.default(formula = Entropy ~ subtype + HLA, data = df)
## 
## Coefficients:
##               Estimate Std. Error t.value   p.value    
## (Intercept) 2.2243e-01 3.9883e-02  5.5770 5.482e-07 ***
## subtype     6.2537e-05 4.8569e-06 12.8760 < 2.2e-16 ***
## HLA         9.1099e-05 4.1695e-05  2.1849   0.03263 *  
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Multiple R-squared (Robust): 0.6342956 
## Reduction in Dispersion Test: 54.63514 p-value: 0
```

```
##             2.5 % 97.5 %
## (Intercept)    NA     NA
## subtype        NA     NA
## HLA            NA     NA
```

## Subtype chi-square test and HLA chi-square test sum with interaction, Rfit
Positions without HLA Chi-square test were excluded.

```
## Call:
## rfit.default(formula = Entropy ~ subtype * HLA, data = df)
## 
## Coefficients:
##                Estimate  Std. Error t.value   p.value    
## (Intercept)  2.1856e-01  4.0171e-02  5.4407 9.576e-07 ***
## subtype      6.3803e-05  5.5539e-06 11.4880 < 2.2e-16 ***
## HLA          1.0315e-04  4.8965e-05  2.1066    0.0392 *  
## subtype:HLA -7.0884e-09  1.0000e-08 -0.7088    0.4811    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Multiple R-squared (Robust): 0.6418986 
## Reduction in Dispersion Test: 37.0451 p-value: 0
```

```
##             2.5 % 97.5 %
## (Intercept)    NA     NA
## subtype        NA     NA
## HLA            NA     NA
## subtype:HLA    NA     NA
```


## Subtype chi-square test and HLA chi-square test median, Rfit
Positions without HLA Chi-square test were excluded.

```
## Call:
## rfit.default(formula = Entropy ~ subtype + HLA, data = df)
## 
## Coefficients:
##                Estimate  Std. Error t.value   p.value    
## (Intercept)  2.7225e-01  4.7307e-02  5.7550 2.758e-07 ***
## subtype      6.4127e-05  5.1665e-06 12.4120 < 2.2e-16 ***
## HLA         -1.7266e-03  1.1020e-03 -1.5668    0.1222    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Multiple R-squared (Robust): 0.6182529 
## Reduction in Dispersion Test: 51.01537 p-value: 0
```

```
##             2.5 % 97.5 %
## (Intercept)    NA     NA
## subtype        NA     NA
## HLA            NA     NA
```

## Subtype chi-square test and HLA chi-square test median with interaction, Rfit
Positions without HLA Chi-square test were excluded.

```
## Call:
## rfit.default(formula = Entropy ~ subtype * HLA, data = df)
## 
## Coefficients:
##                Estimate  Std. Error t.value   p.value    
## (Intercept)  2.4074e-01  5.5051e-02  4.3731 4.770e-05 ***
## subtype      7.1115e-05  6.8089e-06 10.4446 2.705e-15 ***
## HLA         -4.0558e-04  1.4271e-03 -0.2842   0.77720    
## subtype:HLA -2.3205e-07  1.3230e-07 -1.7540   0.08438 .  
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Multiple R-squared (Robust): 0.630396 
## Reduction in Dispersion Test: 35.24903 p-value: 0
```

```
##             2.5 % 97.5 %
## (Intercept)    NA     NA
## subtype        NA     NA
## HLA            NA     NA
## subtype:HLA    NA     NA
```
