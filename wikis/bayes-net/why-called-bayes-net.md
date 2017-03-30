## Why called “Bayes” net

The whole concept of Bayesian networks is built on Bayes rule, which helps us to express the conditional probability distribution of cause given the observed evidence using the converse conditional probability of observing evidence given the cause: 


###### Bayes Rule
For any two events, A and B,
$$P(B|A) = \frac{P(A|B) \times P(B)}{P(A)}$$

where you read $$P(A)$$ as "the probability of A", and $$P(A|B)$$ as "the probability of $$A$$ given that $$B$$ has occurred".


It turns out that Bayes' rule is very powerful and is the basic computation rule that allows us to update all the probabilities in a net, when any one piece of information changes. Here is an example of it. Suppose you live in London, England, and you notice that during the winter, it rains $$50 \%$$ of the time and that it is cloudy $$80 \%$$ of the time (sometimes it is cloudy without rain). You know, of course, that $$100 \%$$ of the time, if it is raining, then it is also cloudy. What do you think the chances are of rain, given that it is just cloudy? Well, Bayes rule allows you to compute this. Bayes rule says that:
*  $$P(R|C) = \frac{P(R)P(C|R)}{P(C)} = \frac{0.5 \times 1.0} {0.8} = 0.625 = \frac{5}{8}$$. 

So, $$\frac{5}{8}$$ of the time, in London during winter, if it is cloudy, then it is rainy.
Bayes rule can be extended to multiple variables with multiple states. Those equations are far more complex to write out, and tough to compute by hand, but easy for computers to solve, which is one reason why programs like Netica are so valuable.

