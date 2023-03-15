---
title: "Capsid position correlation"
output:
  html_document:
    keep_md: yes
---

Report generated at: 03/15/2023 03:59 PM PDT



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
## -0.63064 -0.12129  0.04776  0.04776  1.20449 
## 
## Coefficients:
##               Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  -0.050997   0.023846  -2.139   0.0335 *  
## subtype_rank  0.001616   0.000244   6.622 2.51e-10 ***
## HLA           0.116175   0.011516  10.088  < 2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.2477 on 228 degrees of freedom
## Multiple R-squared:  0.6318,	Adjusted R-squared:  0.6286 
## F-statistic: 195.6 on 2 and 228 DF,  p-value: < 2.2e-16
```

```
##                     2.5 %       97.5 %
## (Intercept)  -0.097984402 -0.004009202
## subtype_rank  0.001135112  0.002096718
## HLA           0.093484362  0.138866266
```

## Subtype chi-square test rank and #HLA Reference with interaction, regression

```
## 
## Call:
## lm(formula = Entropy ~ subtype_rank * HLA, data = df)
## 
## Residuals:
##      Min       1Q   Median       3Q      Max 
## -0.57387 -0.12035  0.02421  0.02421  1.12006 
## 
## Coefficients:
##                    Estimate Std. Error t value Pr(>|t|)    
## (Intercept)      -0.0273060  0.0190108  -1.436    0.152    
## subtype_rank      0.0015486  0.0001935   8.003 6.22e-14 ***
## HLA              -0.4757497  0.0515918  -9.221  < 2e-16 ***
## subtype_rank:HLA  0.0029941  0.0002568  11.657  < 2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 0.1963 on 227 degrees of freedom
## Multiple R-squared:  0.7697,	Adjusted R-squared:  0.7666 
## F-statistic: 252.8 on 3 and 227 DF,  p-value: < 2.2e-16
```

```
##                         2.5 %       97.5 %
## (Intercept)      -0.064766143  0.010154241
## subtype_rank      0.001167346  0.001929919
## HLA              -0.577409861 -0.374089615
## subtype_rank:HLA  0.002488011  0.003500237
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
