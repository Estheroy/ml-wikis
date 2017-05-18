## Probability Functions

For a function $$f$$ to be a valid probability function, it needs to obey these rules:
1. The integral of the function must be equal to 1, so that it is a valid event space. If the function is discrete, then the sum of the function must be equal to 1.
2. The function must be non-negative at all open sub-intervals. This is a fancy way of saying that the integral or sum over any subrange of the function cannot be negative.
	
Continuous valued probability distributions are called **PDFs**, or **probability density functions**. Discrete or discontinuous valued probability distributions are called **PMDs**, **probability mass functions**, or simply **probability functions**.


PDFs and PMFs differ in a key way. With PMFs, probabilistic events can be defined as the value of the function at some point. For example, if we have some random variable $$X$$ with associated probability mass function $$L(X)$$, then $$P(X = n)$$, $$P(n < X < m)$$ and any other coherent equation or inequality on  is an evaluable event. These expressions can be treated as full probabilistic events, with all the theorems that apply. 
$$P(X = n)$$ is just the value of the function $$L$$ at $$n$$, and $$P(n < X < m)$$ is the integral of the function $$L$$ from $$n$$ to $$m$$.
	
	
By contrast, PDFs do not constitute probabilistic events when evaluated at a single value. If we have some random variable Y with associated PDF $$Q(Y)$$, then the event $$P(Y = n)$$ is not defined for any $$n$$. An event defined by a random variable with a continuous valued distribution has to be **a range**. $$P(Y > n)$$ is definable, as is $$P(n < Y < m)$$ , and they are just the integral of $$Q$$ from $$n$$ to $$\infty$$, and from $$n$$ to $$m$$, respectively.