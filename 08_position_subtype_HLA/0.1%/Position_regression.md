---
title: "Capsid position correlation"
output:
  html_document:
    keep_md: yes
---

Report generated at: 03/15/2023 07:02 PM PDT



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
##               Estimate Std. Error t.value p.value    
## (Intercept) 2.8361e-02 1.2911e-02  2.1967 0.02993 *  
## subtype     5.9898e-05 2.2199e-06 26.9826 < 2e-16 ***
## HLA         7.2498e-02 5.4087e-03 13.4040 < 2e-16 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Multiple R-squared (Robust): 0.807116 
## Reduction in Dispersion Test: 255.2523 p-value: 0
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
##                Estimate  Std. Error t.value   p.value    
## (Intercept)  2.5544e-02  1.2673e-02  2.0156  0.046055 *  
## subtype      6.8752e-05  3.1974e-06 21.5028 < 2.2e-16 ***
## HLA          7.7168e-02  6.1905e-03 12.4656 < 2.2e-16 ***
## subtype:HLA -2.5330e-06  9.0434e-07 -2.8009  0.005935 ** 
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Multiple R-squared (Robust): 0.8217689 
## Reduction in Dispersion Test: 185.9646 p-value: 0
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
