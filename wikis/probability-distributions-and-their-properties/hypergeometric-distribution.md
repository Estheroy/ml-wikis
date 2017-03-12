## Hypergeometric Distribution

a) Notation
X ∼ HyperGeom(N, G, n)

b) Interpretation
	The hypergeometric distribution is very similar to binomial distribution for counting the number of success. The selecting process in binomial distribution is with replacement, i.e., a population item can be selected more than one time while the selecting process in hypergeometric trials is without replacement, i.e,. a population item can be selected only one time. If we randomly select x items without replacement from a population of N items that contained G good items and N - G bad items, the probability of selecting n good items in our sample can be described as hypergeometric distribution.

c) Type:
Discrete

d) Parameter(s):
	N - the number of trials/experiments in total
	G - the number of good trials/experiments happened
	B - the number of bad trials/experiments happened

e) Probability Density Function:
	

f) Range:
	N[0, ∞)
G[0, N]
x  G
n-xN-m

g) Mean:
	

h) Variance:


i) Application:

	In real world, hypergeometric distribution often used in calculating the probability of getting x good or defective items in quality control.
	For example, the factory produced a batch of 70 circuit chip where 10 of the original batch are defective chips and 40 of these are selected without replacement for quality testing, we can calculate the probability of getting less than 5% defective chips by simulating the quality test with hypergeometric distribution.

