## Using bayes net to solve probabilistic inference


<img src="/assets/image03.gif" width="538" height="447" />


We see that the event "grass is wet" $$(W=true)$$ has two possible causes: either the water sprinker is on $$(S=true)$$ or it is raining $$(R=true)$$. The strength of this relationship is shown in the table. For example, we see that $$P(W=true | S=true, R=false) = 0.9$$ (second row), and hence, $$P(W=false | S=true, R=false) = 1 - 0.9 = 0.1$$, since each row must sum to one. Since the C node has no parents, its CPT specifies the prior probability that it is cloudy (in this case, $$0.5$$). (Think of C as representing the season: if it is a cloudy season, it is less likely that the sprinkler is on and more likely that the rain is on.)

The simplest conditional independence relationship encoded in a Bayesian network can be stated as follows: a node is independent of its ancestors given its parents, where the ancestor/parent relationship is with respect to some fixed topological ordering of the nodes.

By the chain rule of probability, the joint probability of all the nodes in the graph above is
$$P(C, S, R, W) = P(C) \times P(S|C) \times P(R|C,S) \times P(W|C,S,R)$$
By using conditional independence relationships, we can rewrite this as
$$P(C, S, R, W) = P(C) \times P(S|C) \times P(R|C) \times P(W|S,R)$$
where we were allowed to simplify the third term because $$R$$ is independent of $$S$$ given its parent $$C$$, and the last term because $$W$$ is independent of $$C$$ given its parents $$S$$ and $$R$$.

The most common task we wish to solve using Bayesian networks is probabilistic inference. For example, consider the water sprinkler network, and suppose we observe the fact that the grass is wet. There are two possible causes for this: either it is raining, or the sprinkler is on. Which is more likely? We can use Bayes' rule to compute the posterior probability of each explanation (where $$0==false$$ and $$1==true$$).
$$
\begin{align}
P(S=1|W=1) = \frac{P(S=1, W=1)}{P(W=1)} = \frac{\sum_{c,r}P(C=c,S=1, R=r,W=1)}{P(W=1)} = \frac{0.2781}{0.6471} = 0.430
\end{align}
$$
 
 
$$
\begin{align}
P(R=1|W=1) = \frac{P(R=1, W=1)}{P(W=1)} = \frac{\sum_{c,r}P(C=c,S=s, R=1,W=1)}{P(W=1)} = \frac{0.4581}{0.6471} = 0.708
\end{align}
$$


where 

$$
\begin{align}
P(W=1)= \sum_{c,r,s}P(C=c,S=s,R=r,W=1) = 0.6471
\end{align}
$$

is a normalizing constant, equal to the probability (likelihood) of the data. So we see that it is more likely that the grass is wet because it is raining: the likelihood ratio is $$\frac{0.7079}{0.4298} = 1.647$$.