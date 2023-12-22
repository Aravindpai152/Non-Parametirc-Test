# Statistical Analysis in R

## Overview

This repository contains R code for conducting non-parametric statistical tests on survey data obtained through a primary survey. The primary focus is on assessing the normality of different variables using the Shapiro-Wilk test and conducting group comparisons based on gender using the Mann-Whitney U test. Additionally, the Kruskal-Wallis test is employed to examine variable differences across education levels.

## Data

The dataset is sourced from two CSV files: "GenMedian.csv" and "EduMedian.csv." These files contain variables such as `Median_PH`, `Median_MH`, `Median_A`, `Median_DP`, `Median_FR`, `Median_IH`, `Median_P`, `Median_SE`, and `Median_K`.

## Code Description

### Shapiro-Wilk Normality Test

Individual normality tests are performed for each variable in the dataset. The results are printed for each variable to assess whether the data follows a normal distribution.

```R
# Example
shapiro.test(Median_PH)
shapiro.test(Median_MH)
# ... (similar tests for other variables)
