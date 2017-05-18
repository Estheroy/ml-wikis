## Different Types of Hypothesis Testing

There are two kinds of hypothesis testing: parametric and nonparametric test.

A parametric test is used when we make a specific assumption about the underlying distribution of the population from which the sample is being drawn, and which is being investigated.

A nonparametric test is a hypothesis test that does not require the population's distribution to be characterized by certain parameters. For example, many hypothesis tests rely on the assumption that the population follows a normal distribution with parameters μ and σ. Nonparametric tests do not have this assumption, so they are useful when your data are strongly non-normal and resistant to transformation.

Note that nonparametric tests are not completely free of assumptions about your data. For instance, nonparametric tests require the data to be an independent random sample.

#### Limitation of nonparametric tests


1. Nonparametric tests are usually less powerful than corresponding tests designed for use on data that come from a specific distribution. Thus, you are less likely to reject the null hypothesis when it is false.

2. Nonparametric tests often require you to modify the hypotheses. For example, most nonparametric tests about the population center are tests about the median instead of the mean. The test does not answer the same question as the corresponding parametric procedure.



#### Parametric tests


* 1-sample z-test: tests for normal distribution in a population sample.


* 1 sample t-test: tests for a single Student's t-distribution, ie, in a normally distributed population where standard deviation in unknown and sample size is comparatively small.


* 2 sample t-test: tests for comparing two samples (Student's t distribution).


* 1 proportions test: tests for estimating the proportion of a population and compare it to a target or reference value.

* For example, you have data for a sample of customers and you wish to determine whether your placement rate is better than the published claims of a different employment agency.


* 2 proportions test: tests for determining whether the difference between two proportions is significant.


* Chi-Square Test for Independence: tests for an association of significance between two categorical variables in a population sample. Typically used with random sampling.


* Chi-Square Goodness-of-fit: tests for determining whether sample data are consistent with a hypothesized distribution.


* Analysis of Variance (ANOVA): tests for analyzing differences between the means in several groups. Often used similarly to a t-test, but for more than two groups.



#### Non parametric tests



* Mood's Median: tests that compare the medians of
two or more population medians.

* For example, an environmental group wants to determine whether temperature changes in the ocean water near a nuclear power plant will have a significant effect on the animal life in the region. The group randomly divides 25 specimens of a certain species of fish into 4 groups and puts them in separate simulated ocean environments, which are identical in every way except for water temperature. Six months later, they measure the weights of the fish.



* Welch's T-Test: tests for equality of means between two population samples. Also knowns as Welch's unequal variance t-test.

* Welch’s t-test, unlike Student’s t-test, does not have the assumption of equal variance (however, both tests have the assumption of normality). When two groups have equal sample sizes and variances, Welch’s tends to give the same result as Student’s. However, when sample sizes and variances are unequal, Student’s t-test is quite unreliable while Welch’s t-test tends perform better.



* Kruskal-Wallis H Test: tests for comparing two or more groups with an independent variable, Kruskal-Wallis test to determine whether the medians of two or more groups differ when you have data that are not symmetric, such as skewed data

* For example, a health administrator wants to compare the unoccupied bed space for three hospitals in the same city.



* Sign test: tests for testing whether or not two groups are equally sized.

* For example, a running club conducts a 6-week training program in preparing 20 middle aged amateur runners for a 5K running race. The difference is taken to be pre-training time minus post-training time. We can use the sign test to test whether the training program improves run time.



* Mann-Whitney test: Tests for determining whether the population medians of two groups differ.
Calculate a range of values that is likely to include the difference between the population medians.

* For example, consultants compare the payrolls of two companies to determine whether their median salaries differ. They take random samples from both payrolls. The data are right-skewed, with many workers earning lower salaries and only a few executives earning high salaries. But because this skew applies to both companies, the data satisfy the "same shape" assumption. Because the two populations are nonnormal, yet have the same shape, the consultant chooses the nonparametric Mann-Whitney test to compare the two samples.

* The Mann-Whitney test uses the ranks of the sample data, instead of their specific values, to detect statistical significance.

* Wilcoxon test: Tests for estimating the population median and compare it to a target or reference value

* The 1-sample Wilcoxon test is a nonparametric alternative of the 1-sample t-test because it does not require the data to come from a normally distributed population, as the t-test does. However, the 1-sample Wilcoxon test also assumes the data comes from a symmetric distribution, such as the uniform or Cauchy distributions. If you cannot verify this assumption of symmetry, use the nonparametric 1-sample sign test, which does not assume a symmetric distribution.

* For example, you can determine whether the median time for a newly developed antacid to relieve pain is 12 minutes.
