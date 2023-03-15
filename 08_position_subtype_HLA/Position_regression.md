---
title: "Capsid position correlation"
output:
  html_document:
    keep_md: yes
---

Report generated at: 03/15/2023 04:19 PM PDT



## Meaning of correlation_data.csv

- pos: all rows are calculated by each postion of capsid
- Entropy: entropy of mutations >= 0.1%
- Subtype Chi-square test was calculated by contigency table of subtypes and mutations >= 0.1% in any subtype.
  - Subtype Chi-square
  - Subtype Chi-square rank: Subtype chi-square rank number
- HLA References: Number of HLA References

## Subtype chi-square test rank and #HLA Reference, regression

```
## 
## Call:
## lm(formula = Entropy ~ subtype_rank + HLA, data = df)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -0.49054 -0.12676  0.05899  0.05899  1.08086 
## 
## Coefficients:
##                Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  -0.0649727  0.0179847  -3.613 0.000373 ***
## subtype_rank  0.0059825  0.0004743  12.614  < 2e-16 ***
## HLA           0.0695970  0.0105914   6.571 3.35e-10 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.2075 on 228 degrees of freedom
## Multiple R-squared:  0.7414,	Adjusted R-squared:  0.7391 
## F-statistic: 326.8 on 2 and 228 DF,  p-value: < 2.2e-16
```

```
##                     2.5 %       97.5 %
## (Intercept)  -0.100410075 -0.029535301
## subtype_rank  0.005047985  0.006917091
## HLA           0.048727501  0.090466598
```

## Subtype chi-square test rank and #HLA Reference with interaction, regression

```
## 
## Call:
## lm(formula = Entropy ~ subtype_rank * HLA, data = df)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -0.49577 -0.06789  0.02419  0.02419  1.05375 
## 
## Coefficients:
##                    Estimate Std. Error t value Pr(>|t|)    
## (Intercept)      -0.0290519  0.0157400  -1.846   0.0662 .  
## subtype_rank      0.0048617  0.0004199  11.578  < 2e-16 ***
## HLA              -0.1266590  0.0226494  -5.592 6.42e-08 ***
## subtype_rank:HLA  0.0022689  0.0002403   9.441  < 2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.1763 on 227 degrees of freedom
## Multiple R-squared:  0.8143,	Adjusted R-squared:  0.8119 
## F-statistic: 331.8 on 3 and 227 DF,  p-value: < 2.2e-16
```

```
##                         2.5 %       97.5 %
## (Intercept)      -0.060067012  0.001963226
## subtype_rank      0.004034310  0.005689167
## HLA              -0.171288986 -0.082028922
## subtype_rank:HLA  0.001795338  0.002742393
```

## Subtype chi-square test and #HLA Reference, Rfit

```
## Call:
## rfit.default(formula = Entropy ~ subtype + HLA, data = df)
## 
## Coefficients:
##                Estimate  Std. Error t.value p.value    
## (Intercept) -1.3149e-16  1.0396e-03   0.000       1    
## subtype      6.2657e-05  5.1691e-07 121.213  <2e-16 ***
## HLA          7.6844e-02  1.1701e-03  65.673  <2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Multiple R-squared (Robust): 0.9305885 
## Reduction in Dispersion Test: 1528.378 p-value: 0
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
## S = 24496, p-value < 2.2e-16
## alternative hypothesis: true rho is not equal to 0
## sample estimates:
##       rho 
## 0.9247435
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
## S = 122891, p-value = 9.243e-15
## alternative hypothesis: true rho is not equal to 0
## sample estimates:
##       rho 
## 0.6224559
```

## Subtype chi-square test and #HLA Reference with interaction, Rfit

```
## Call:
## rfit.default(formula = Entropy ~ subtype * HLA, data = df)
## 
## Coefficients:
##                Estimate  Std. Error t.value p.value    
## (Intercept) -5.8438e-17  1.1320e-03   0.000       1    
## subtype      7.2222e-05  7.7067e-07  93.713  <2e-16 ***
## HLA          7.8699e-02  1.3823e-03  56.933  <2e-16 ***
## subtype:HLA -2.9140e-06  2.1971e-07 -13.263  <2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Multiple R-squared (Robust): 0.9320679 
## Reduction in Dispersion Test: 1038.191 p-value: 0
```

```
##             2.5 % 97.5 %
## (Intercept)    NA     NA
## subtype        NA     NA
## HLA            NA     NA
## subtype:HLA    NA     NA
```

<!-- ## Subtype chi-square test and HLA chi-square test mean, Rfit -->

<!-- Positions without HLA Chi-square test were treated as 0. -->

<!-- ```{r sct-hct-mean} -->
<!-- adf = read.csv('correlation_data.csv') %>%  -->
<!--   mutate(subtype=Subtype.Chi.square, HLA=HLA.Chi.square.mean) %>% -->
<!--   mutate(HLA=replace_na(HLA, 0)) -->

<!-- model = rfit(Entropy ~ subtype + HLA, data=df) -->
<!-- summary(model) -->
<!-- confint(model) -->

<!-- df = df %>% filter(Entropy > 0)  -->
<!-- spearman = cor.test(df$Entropy, df$HLA, method = "spearman") -->
<!-- print("Entropy x HLA chi-square test mean") -->
<!-- print(spearman) -->
<!-- ``` -->

<!-- ## Subtype chi-square test and HLA chi-square test mean with interaction, Rfit -->

<!-- Positions without HLA Chi-square test were treated as 0. -->

<!-- ```{r sct-hct-mean-inter} -->
<!-- df = read.csv('correlation_data.csv') %>%  -->
<!--   mutate(subtype=Subtype.Chi.square, HLA=HLA.Chi.square.mean) %>% -->
<!--   mutate(HLA=replace_na(HLA, 0)) -->

<!-- model = rfit(Entropy ~ subtype * HLA, data=df) -->
<!-- summary(model) -->
<!-- confint(model) -->
<!-- ``` -->

<!-- ## Subtype chi-square test and HLA chi-square test sum, Rfit -->

<!-- Positions without HLA Chi-square test were treated as 0. -->

<!-- ```{r sct-hct-sum} -->
<!-- df = read.csv('correlation_data.csv') %>%  -->
<!--   mutate(subtype=Subtype.Chi.square, HLA=HLA.Chi.square.sum) %>% -->
<!--   mutate(HLA=replace_na(HLA, 0)) -->

<!-- model = rfit(Entropy ~ subtype + HLA, data=df) -->
<!-- summary(model) -->
<!-- confint(model) -->

<!-- df = df %>% filter(Entropy > 0) -->
<!-- spearman = cor.test(df$Entropy, df$HLA, method = "spearman") -->
<!-- print("Entropy x HLA chi-square test sum") -->
<!-- print(spearman) -->
<!-- ``` -->

<!-- ## Subtype chi-square test and HLA chi-square test sum with interaction, Rfit -->

<!-- Positions without HLA Chi-square test were treated as 0. -->

<!-- ```{r sct-hct-sum-inter} -->
<!-- df = read.csv('correlation_data.csv') %>%  -->
<!--   mutate(subtype=Subtype.Chi.square, HLA=HLA.Chi.square.sum) %>% -->
<!--   mutate(HLA=replace_na(HLA, 0)) -->

<!-- model = rfit(Entropy ~ subtype * HLA, data=df) -->
<!-- summary(model) -->
<!-- confint(model) -->
<!-- ``` -->


<!-- ## Subtype chi-square test and HLA chi-square test median, Rfit -->

<!-- Positions without HLA Chi-square test were treated as 0. -->

<!-- ```{r sct-hct-median} -->
<!-- df = read.csv('correlation_data.csv') %>%  -->
<!--   mutate(subtype=Subtype.Chi.square, HLA=HLA.Chi.square.median) %>% -->
<!--   mutate(HLA=replace_na(HLA, 0)) -->

<!-- model = rfit(Entropy ~ subtype + HLA, data=df) -->
<!-- summary(model) -->
<!-- confint(model) -->

<!-- df = df %>% filter(Entropy > 0) -->
<!-- spearman = cor.test(df$Entropy, df$HLA, method = "spearman") -->
<!-- print("Entropy x HLA chi-square test median") -->
<!-- print(spearman) -->
<!-- ``` -->

<!-- ## Subtype chi-square test and HLA chi-square test median with interaction, Rfit -->

<!-- Positions without HLA Chi-square test were treated as 0. -->

<!-- ```{r sct-hct-median-inter} -->
<!-- df = read.csv('correlation_data.csv') %>%  -->
<!--   mutate(subtype=Subtype.Chi.square, HLA=HLA.Chi.square.median) %>% -->
<!--   mutate(HLA=replace_na(HLA, 0)) -->

<!-- model = rfit(Entropy ~ subtype * HLA, data=df) -->
<!-- summary(model) -->
<!-- confint(model) -->
<!-- ``` -->
