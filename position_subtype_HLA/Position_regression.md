---
title: "Capsid position correlation"
output:
  html_document:
    keep_md: yes
---

Report generated at: 03/09/2023 10:37 AM PDT



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

```
## [1] "Entropy x Subtype chi-square test"
```

```
## 
## 	Spearman's rank correlation rho
## 
## data:  df$Entropy and df$subtype
## S = 31776, p-value < 2.2e-16
## alternative hypothesis: true rho is not equal to 0
## sample estimates:
##       rho 
## 0.9023779
```

```
## Warning in cor.test.default(df$Entropy, df$HLA, method = "spearman"): Cannot
## compute exact p-value with ties
```

```
## [1] "Entropy x #HLA Reference"
```

```
## 
## 	Spearman's rank correlation rho
## 
## data:  df$Entropy and df$HLA
## S = 91600, p-value < 2.2e-16
## alternative hypothesis: true rho is not equal to 0
## sample estimates:
##       rho 
## 0.7185877
```

```
## Warning in cor.test.default(df$subtype, df$HLA, method = "spearman"): Cannot
## compute exact p-value with ties
```

```
## [1] "Subtype chi-square test x #HLA Reference"
```

```
## 
## 	Spearman's rank correlation rho
## 
## data:  df$subtype and df$HLA
## S = 134364, p-value = 6.13e-13
## alternative hypothesis: true rho is not equal to 0
## sample estimates:
##       rho 
## 0.5872064
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
##               Estimate Std. Error t.value p.value    
## (Intercept) 2.9219e-17 2.2131e-03   0.000       1    
## subtype     7.5609e-05 5.6105e-07 134.763  <2e-16 ***
## HLA         2.9159e-03 1.0026e-04  29.084  <2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Multiple R-squared (Robust): 0.9052548 
## Reduction in Dispersion Test: 1089.227 p-value: 0
```

```
##             2.5 % 97.5 %
## (Intercept)    NA     NA
## subtype        NA     NA
## HLA            NA     NA
```

```
## Warning in cor.test.default(df$Entropy, df$HLA, method = "spearman"): Cannot
## compute exact p-value with ties
```

```
## [1] "Entropy x HLA chi-square test mean"
```

```
## 
## 	Spearman's rank correlation rho
## 
## data:  df$Entropy and df$HLA
## S = 111998, p-value < 2.2e-16
## alternative hypothesis: true rho is not equal to 0
## sample estimates:
##       rho 
## 0.6559213
```

## Subtype chi-square test and HLA chi-square test mean with interaction, Rfit
Positions without HLA Chi-square test were excluded.

```
## Call:
## rfit.default(formula = Entropy ~ subtype * HLA, data = df)
## 
## Coefficients:
##                Estimate  Std. Error t.value p.value    
## (Intercept) -2.9219e-17  2.0472e-03   0.000       1    
## subtype      8.2192e-05  6.3863e-07 128.702  <2e-16 ***
## HLA          3.4629e-03  1.0877e-04  31.837  <2e-16 ***
## subtype:HLA -3.2708e-07  1.3722e-08 -23.835  <2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Multiple R-squared (Robust): 0.9142012 
## Reduction in Dispersion Test: 806.2413 p-value: 0
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
##               Estimate Std. Error t.value p.value    
## (Intercept) 5.8438e-17 3.1364e-03   0.000       1    
## subtype     7.8080e-05 5.4985e-07 142.004  <2e-16 ***
## HLA         1.8285e-04 5.7771e-06  31.651  <2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Multiple R-squared (Robust): 0.9028929 
## Reduction in Dispersion Test: 1059.962 p-value: 0
```

```
##             2.5 % 97.5 %
## (Intercept)    NA     NA
## subtype        NA     NA
## HLA            NA     NA
```

```
## Warning in cor.test.default(df$Entropy, df$HLA, method = "spearman"): Cannot
## compute exact p-value with ties
```

```
## [1] "Entropy x HLA chi-square test sum"
```

```
## 
## 	Spearman's rank correlation rho
## 
## data:  df$Entropy and df$HLA
## S = 100765, p-value < 2.2e-16
## alternative hypothesis: true rho is not equal to 0
## sample estimates:
##       rho 
## 0.6904308
```

## Subtype chi-square test and HLA chi-square test sum with interaction, Rfit
Positions without HLA Chi-square test were excluded.

```
## Call:
## rfit.default(formula = Entropy ~ subtype * HLA, data = df)
## 
## Coefficients:
##                Estimate  Std. Error  t.value   p.value    
## (Intercept)  2.9219e-17  3.1439e-03   0.0000         1    
## subtype      7.8231e-05  6.2317e-07 125.5368 < 2.2e-16 ***
## HLA          2.0667e-04  6.7800e-06  30.4816 < 2.2e-16 ***
## subtype:HLA -7.9189e-09  1.4087e-09  -5.6214  5.53e-08 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Multiple R-squared (Robust): 0.9041674 
## Reduction in Dispersion Test: 713.9042 p-value: 0
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
##               Estimate Std. Error t.value p.value    
## (Intercept) 5.8438e-17 2.8518e-03   0.000       1    
## subtype     7.6371e-05 5.7197e-07 133.521  <2e-16 ***
## HLA         1.9869e-03 1.2363e-04  16.072  <2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Multiple R-squared (Robust): 0.9037111 
## Reduction in Dispersion Test: 1069.937 p-value: 0
```

```
##             2.5 % 97.5 %
## (Intercept)    NA     NA
## subtype        NA     NA
## HLA            NA     NA
```

```
## Warning in cor.test.default(df$Entropy, df$HLA, method = "spearman"): Cannot
## compute exact p-value with ties
```

```
## [1] "Entropy x HLA chi-square test median"
```

```
## 
## 	Spearman's rank correlation rho
## 
## data:  df$Entropy and df$HLA
## S = 116186, p-value = 6.176e-16
## alternative hypothesis: true rho is not equal to 0
## sample estimates:
##       rho 
## 0.6430541
```

## Subtype chi-square test and HLA chi-square test median with interaction, Rfit
Positions without HLA Chi-square test were excluded.

```
## Call:
## rfit.default(formula = Entropy ~ subtype * HLA, data = df)
## 
## Coefficients:
##                Estimate  Std. Error t.value p.value    
## (Intercept)  5.8438e-17  1.1743e-03   0.000       1    
## subtype      8.1888e-05  6.3661e-07 128.633  <2e-16 ***
## HLA          4.6894e-03  1.4180e-04  33.069  <2e-16 ***
## subtype:HLA -3.9776e-07  1.4684e-08 -27.087  <2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Multiple R-squared (Robust): 0.9124757 
## Reduction in Dispersion Test: 788.8555 p-value: 0
```

```
##             2.5 % 97.5 %
## (Intercept)    NA     NA
## subtype        NA     NA
## HLA            NA     NA
## subtype:HLA    NA     NA
```
