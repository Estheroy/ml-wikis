## Properties of uniform-cost search

Now it’s time to learn some properties of UCS.
If all the edge costs are positive, and if the nodes are finite, then UCS is **complete**. Similarly to BFS, UCS is also **optimal**. First, let’s assume the given graph is a tree and:
* **Branching factor** is B
* The cost of the optimal solution is C
* Every step cost at least e


The time complexity of UCS is the number of nodes whose g(n) < our desired node’s g(n) which is the number of nodes we will explore before we find the solution node. So, in the worst case, time complexity will be $$O(B^{C/e})$$
The space complexity of UCS is also, in the worst case, the number of nodes whose g(n) < our desired node’s g(n). So, it’s similar to the time complexity.


As we can see above, UCS is very similar to BFS except it works well on all non-negative edge graphs. So it shares many problems with BFS such as memory space problem.