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

## Positions withou HLA chi-square test

When doing calculation, positions without HLA Chi-square test were treated as 0. In the correction_data.csv file, the values were kept blank.

There're two categories of these positions.

1. Many positions were not associated with any HLA in all HLA References
2. For a small number of positions, they were associated with some HLA in just one paper. But the paper didn't provide the contigency table for calculation.


