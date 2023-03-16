---
title: "Capsid position correlation"
output:
  html_document:
    keep_md: yes
---

Report generated at: 03/15/2023 07:13 PM PDT



## Meaning of correlation_data.csv

- pos: all rows are calculated by each postion of capsid
- Entropy: entropy of mutations >= 0.1%
- Subtype Chi-square test was calculated by contigency table of subtypes and mutations >= 0.1% in any subtype.
  - Subtype Chi-square
- HLA References: Number of HLA References

<!-- ## Subtype chi-square test rank and #HLA Reference, regression -->
<!-- ```{r sct-rank-hla} -->
<!-- df = read.csv('correlation_data.csv') %>% mutate(subtype_rank=Subtype.Chi.square_rank, HLA=HLA.References) -->

<!-- model = lm(Entropy ~ subtype_rank + HLA, data=df) -->
<!-- summary(model) -->
<!-- confint(model) -->

<!-- # ggPredict(model,se=TRUE,interactive=TRUE) -->
<!-- ``` -->

<!-- ## Subtype chi-square test rank and #HLA Reference with interaction, regression -->
<!-- ```{r sct-rank-hla-inter} -->
<!-- df = read.csv('correlation_data.csv') %>% mutate(subtype_rank=Subtype.Chi.square_rank, HLA=HLA.References) -->

<!-- model = lm(Entropy ~ subtype_rank * HLA, data=df) -->
<!-- summary(model) -->
<!-- confint(model) -->

<!-- # ggPredict(model,se=TRUE,interactive=TRUE) -->
<!-- ``` -->

## Subtype chi-square test and #HLA Reference, Rfit

```
## Call:
## rfit.default(formula = Entropy ~ subtype + HLA, data = df)
## 
## Coefficients:
##               Estimate Std. Error t.value   p.value    
## (Intercept) 8.0382e-02 5.0127e-02  1.6036    0.1135    
## subtype     5.5344e-05 4.8157e-06 11.4923 < 2.2e-16 ***
## HLA         6.8826e-02 1.2855e-02  5.3540 1.131e-06 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Multiple R-squared (Robust): 0.6394636 
## Reduction in Dispersion Test: 59.41712 p-value: 0
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
## S = 9818, p-value < 2.2e-16
## alternative hypothesis: true rho is not equal to 0
## sample estimates:
##       rho 
## 0.8282215
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
## S = 32450, p-value = 0.0001865
## alternative hypothesis: true rho is not equal to 0
## sample estimates:
##       rho 
## 0.4322406
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
## S = 45204, p-value = 0.08234
## alternative hypothesis: true rho is not equal to 0
## sample estimates:
##       rho 
## 0.2091036
```

## Subtype chi-square test and #HLA Reference with interaction, Rfit

```
## Call:
## rfit.default(formula = Entropy ~ subtype * HLA, data = df)
## 
## Coefficients:
##                Estimate  Std. Error t.value   p.value    
## (Intercept)  7.3142e-02  6.3781e-02  1.1468 0.2556181    
## subtype      5.9447e-05  8.6017e-06  6.9111  2.33e-09 ***
## HLA          7.6252e-02  1.9274e-02  3.9562 0.0001886 ***
## subtype:HLA -1.7702e-06  2.4230e-06 -0.7306 0.4676240    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Multiple R-squared (Robust): 0.6324102 
## Reduction in Dispersion Test: 37.84932 p-value: 0
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
