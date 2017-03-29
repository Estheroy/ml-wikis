## Type I and Type II Error

When we conduct a hypothesis test, two types of errors are possible: type I and type II. The risks of these two errors are inversely related and determined by the level of significance and the power for the test. Therefore, you should determine which error has more severe consequences for your situation before you define their risks. No hypothesis test is 100% certain. Because the test is based on probabilities, there is always a chance of drawing an incorrect conclusion.

If we have to conclude that two distributions vary in a meaningful way, we must take enough precaution to see that the
differences are not just through random chance. At the heart of Type I error is that we don't want to make an unwarranted hypothesis so we exercise a lot of care by minimizing the chance of its occurrence. Traditionally we try to set Type I error as $$0.05$$ or $$0.01$$ - as in there is only a 5 or 1 in 100 chance that the variation that we are seeing is due to chance.
This is called the "level of significance".



#### Type I error

Type I error is also known as a “false positive”: the error of rejecting a null hypothesis when it is actually true. In other words, when the null hypothesis is true but you reject it by mistake. The probability of making a type I error is $$\alpha$$, which is the level of significance you set for your hypothesis test. An $$\alpha$$ of $$0.05$$ indicates that you are willing to accept a 5% chance that you are wrong when you reject the null hypothesis. To lower this risk, you must use a lower value for $$\alpha$$. However, using a lower value for alpha means that you will be less likely to detect a true difference if one really exists.


#### Type II error

Type II error is also known as a "false negative": the error of not rejecting a null hypothesis when the alternative hypothesis is the true state of nature. In other words, when the null hypothesis is false and you fail to reject it, you make a type II error. The probability of making a type II error is $$\beta$$, which depends on the power of the test. You can decrease your risk of committing a type II error by ensuring your test has enough power. You can do this by ensuring your sample size is large enough to detect a practical difference when one truly exists.
The probability of rejecting the null hypothesis when it is false is equal to $$1 - \beta$$. This value is the power of the test.


|  |  $$H_0$$ is True    |  $$H_0$$ is False|
|---------|:----------------------:|---------|
| Reject|  Type I Error | Correct Decision| 
| Do Not Reject| Correct Decision | Type II Error|

  
#### Example of type I and type II error
To understand the interrelationship between type I and type II error, and to determine which error has more severe consequences for your situation, consider the following example.

A medical researcher wants to compare the effectiveness of two medications. 

The null and alternative hypotheses are:
* Null hypothesis $$H_0$$: $$\mu_1 = \mu_2$$ (The two medications are equally effective)
* Alternative hypothesis $$H_1$$: $$\mu_1 \neq \mu_2 $$ (The two medications are not equally effective)

A type I error occurs if the researcher rejects the null hypothesis and concludes that the two medications are different when, in fact, they are not. If the medications have the same effectiveness, the researcher may not consider this error too severe because the patients still benefit from the same level of effectiveness regardless of which medicine they take. However, if a type II error occurs, the researcher fails to reject the null hypothesis when it should be rejected. That is, the researcher concludes that the medications are the same when, in fact, they are different. This error is potentially life-threatening if the less-effective medication is sold to the public instead of the more effective one.

As you conduct your hypothesis tests, consider the risks of making type I and type II errors. If the consequences of making one type of error are more severe or costly than making the other type of error, then choose a level of significance and a power for the test that will reflect the relative severity of those consequences.