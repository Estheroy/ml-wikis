## Conditional Probability 

In probability theory, conditional probability is a measure of the probability of an event given that (by assumption, presumption, assertion or evidence) another event has occurred.

If the event of interest is A and the event B is known or assumed to have occurred, "the conditional probability of A given B", or "the probability of A under the condition B", is usually written as $$P(A|B)$$.

#### Definition
The conditional probability of an event A given that an event B has occurred is written and is calculated as:
$$ 
\begin{align*}
P(A|B) = \frac{P(A \cap B)}{P(B)} = \frac{P(B|A)P(A)}{P(B)}
\end{align*}
\ $$ as long as $$P(B) \gt 0$$



#### Properties of conditional probability
Because conditional probability is just a probability, it satisfies the three axioms of probability. That is, as long as $$P(B) > 0:$$
1. $$P(A|B) \geq 0$$
2. $$P(B|B) = 1 $$
3. If $$A_1, A_2, \dots, A_k$$ are mutually exclusive events, then $$P(A_1 \cup A_2 \cup \dots \cup A_k | B) = P(A_1|B) + P(A_2|B) + \dots +P(A_k|B)$$ and likewise for infinite unions.



#### The Multiplication Rule
The probability that two events A and B both occur is given by the multiplication rule as: $$P(A \cap B) = P(A|B)P(B) = P(B|A)P(A)$$
For more than two events, we have rule of average conditional probabilities:
Suppose $$B_1, B_2, \dots, B_n$$ from a partition of B, $$P(A) = \sum_{i=1}^nP(A|B_i)P(B_i)$$




#### Total Probability Rule
The total probability rule, also called the Law of Total Probability, breaks up probability calculations into distinct parts. It’s used to find the probability of an event, A, when you don’t know enough about A’s probabilities to calculate it directly. Instead, you take a related event, B, and use that to calculate the probability for A.

The probability for a can be written as sums of event B. The total probability rule is: $$P(A) = P(A \cap B) + P(A \cap B^c) = P(A|B)P(B) + P(A|B^c)P(B^c)$$

Note: $$B^c$$ means the complement of B.




#### Example
Suppose 80% of people attend their primary care physician regularly; 35% of those people have no health problems crop up during the following year. Out of the 20% of people who don’t see their doctor regularly, only 5% have no health issues during the following year. What is the probability a random person will have no health problems in the following year?

Here, we know that $$P(See \ doctor) = 0.8, P(Does \ not \ see \ doctor) = 0.2, P(No \ health \ problems | See \ doctor ) = 0.35, P(No \ health \ problems | Does \ not \ see \ doctor) = 0.05$$

|Unconditional Probability|Conditional Probability|Joint Probability|
|---|----------|---------|
|$$P(See \ doctor) = 0.8$$ |$$P(No \ health \ problems | See \ doctor ) = 0.35$$|$$P(No \ health \ problems \cap See \ doctor) = 0.28$$ |
|$$P(Does \ not \ see \ doctor) = 0.2$$|$$P(No \ health \ problems | Does \ not \ see \ doctor) = 0.05$$|$$P(No \ health \ problems \cap Does \ not \ see \ doctor) = 0.01$$|
|$$Total = 0.8 + 0.2 = 1$$|


From the marginal probability table, we can know that $$P(No \ health \ problem) = P(No \ health \ problems \cap See \ doctor) + P(No \ health \ problems \cap Does \ not \ see \ doctor) = 0.28 + 0.01 = 0.29$$

Note that we only included in the table the information about “no health issues”, as that was what was being asked about in the question. We could also include all of the information (including the people who had health issues) in the marginal probability table.

