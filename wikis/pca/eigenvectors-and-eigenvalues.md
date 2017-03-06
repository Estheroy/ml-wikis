## Eigenvectors and Eigenvalues

As we said earlier, PCA tries to find a basis to re-express data. Re-expressing data is done with what’s called a basis. let’s define the term orthonormal basis. In simple terms, a basis is a set of vectors that every point in your space is defined in terms of. In the classic 2-d example, the most commonly assumed basis is the set vectors &lt;1,0&gt; and &lt;0,1&gt;. Every point in 2-d space can be expressed as a linear combination of these two vectors.

It’s worth mentioning that you can actually use any two vectors, as long as they’re not zero-length and aren’t multiples of each other, as a basis for 2-d space.

We favor basis vectors that are perpendicular to each other and unit all unit length for computational simplicity. This is why we typically use the vectors &lt;1,0&gt; and &lt;0,1&gt; as these vectors are both length 1, and orthogonal to each other.

$$Av = \lambda v$$

Eigenvectors and their associated eigenvalues can be easily calculated in any scientific programming language, including python, in a single line.

