## Bayes' Theorem

#### Definition
For any event A and B,
$$
\begin{align}
P(A|B) = \frac{P(B|A)P(A)}{P(B)}
\end{align}
$$
where $$P(B)\neq 0$$.
* $$P(A)$$ and $$P(B)$$ are the probabilities of observing $$A$$ and $$B$$ without regard to each other.
* $$P(A|B)$$, a conditional probability, is the probability of observing event $$A$$ given that $$B$$ is true.
* $$P(B|A)$$ is the probability of observing event $$B$$ given that $$A$$ is true.


<br>

#### Deriving Bayes' theorem

Bayes' theorem can be derived from conditional probability and other rules we mentioned in previous section.


Let the $$m$$ events $$B_1, B_2, \dots, B_m$$ constitute a partition of the sample space $$S$$. That is, the $$B_i$$ are mutually exclusive: $$B_i \cap B_j = \varnothing for i \neq j$$ and exhaustive: $$S = B_1 \cup B_2 \cup \dots \cup B_m$$. Also suppose the prior probability of the event $$B_i$$ is positive, that is, $$P(B_i) \gt 0 \ for \ i = 1, \dots, m.$$ Now, if $$A$$ is an event, then $$A$$ can be written as the union of $$m$$ mutually exclusive events, namely: $$A = (A \cap B_1)\cup(A \cap B_2)\cup \dots \cup(A \cap B_m)$$. 
Therefore, take the probability of the union of mutually exclusive events:
$$
\begin{align}
P(A) = P(A \cap B_1)\cup P(A \cap B_2)\cup \dots \cup P(A \cap B_m)
= \sum_{i=1}^m P(A \cap B_i) = \sum_{i=1}^m P(B_i) P(A|B_i)
\end{align}
$$
And so, as long as $$P(A) \gt 0$$, the posterior probability of event $$B_k$$ given event $$A$$ has occurred is:
$$
\begin{align}
P(B_k|A) = \frac{P(B_k \cap A)}{P(A)}
\end{align}
$$
We can then substitute for $$P(B_k \cap A)$$ and $$P(A)$$ in the previous version, and this gives us:

$$
\begin{align}
P(B_k|A) = \frac{P(B_k)P(A|B_k)}{\sum_{i=1}^mP(B_i)P(A|B_i)}
\end{align}
$$


And therefore we derive the classical Bayes' theorem.


<br>

#### Example 1: Drug testing
Suppose a drug test is 99% sensitive and 99% specific. That is, the test will produce 99% true positive results for drug users and 99% true negative results for non-drug users. Suppose that 0.5% of people are users of the drug. If a randomly selected individual tests positive, what is the probability that he is a user?

If we express all the probability known in statistics notation, we know that $$P(+|User) = 0.99, \ P(User) = 0.005, \ and \ P(-| Non-user) = 0.99$$. 
Thus, we can also calculate that $$P(+|Non-user) = 1- 0.99 = 0.01 \ and \ P(Non-user) = 1 - 0.005 = 0.995$$.
By Bayes' theorem, 
$$
\begin{align}
P(User | +) = \frac{P(+|User)P(User)}{P(+|User)P(User) + (+|Non-user)P(Non-user)} 
\newline
= \frac{0.99 \times 0.005}{0,99 \times 0.005 + 0.01 \times 0.995 }
\newline
= 33.2 \%
\end{align}
$$

Despite the apparent accuracy of the test, if an individual tests positive, it is more likely that they do not use the drug than that they do. This surprising result arises because the number of non-users is very large compared to the number of users; thus the number of false positives outweighs the number of true positives. To use concrete numbers, if $$1000$$ individuals are tested, there are expected to be $$995$$ non-users and $$5$$ users. From the $$995$$ non-users, $$0.01 \times 995 \approx 10$$ false positives are expected. From the $$5$$ users, $$0.99 \times 5 \approx 5$$ true positives are expected. Out of $$15$$ positive results, only $$5$$, about $$33 \%$$, are genuine. This illustrates the importance of base rates, and how the formation of policy can be egregiously misguided if base rates are neglected.

The importance of specificity in this example can be seen by calculating that even if sensitivity is raised to $$100 \%$$ and specificity remains at $$99 \%$$ then the probability of the person being a drug user only rises from $$33.2 \%$$ to $$33.4 \%$$, but if the sensitivity is held at $$99 \%$$ and the specificity is increased to $$99.5 \%$$ then probability of the person being a drug user rises to about $$49.9 \%$$.

 
