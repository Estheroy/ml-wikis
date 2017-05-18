## Properties of greedy best-first search

After learning how greedy best-first search works, let’s learn some properties of it. As usual, let’s assume that:
* **Branching factor** is B
* The depth of the solution is D
* The maximum depth of the tree is $$D_m$$


If the search space is finite, then, similar to DFS, greedy best-first search can be **complete**. As we can see in the example above, greedy best-first search isn’t guaranteed to find the shortest path. So, it is **not optimal**. In worst case, the time complexity of greedy best-first search is $$O(B^{Dm})$$, same to DFS. However, greedy best-first search performance can be improved largely by using a well-designed heuristic function. In most cases, the time complexity of greedy best-first search can be better than BFS’s $$O(B^D)$$.

The space complexity of greedy best-first search is similar to its time complexity.

Greedy best-first search works very similarly to the uniform-cost search. It tries to ‘predict’ the lowest cost path from each node to the goal which is $$h(n)$$. The problem with greedy best-first search is that it’s short-sighted. Greedy best-first search only maximizes the short-term advantage which may not be the best in long-term.

