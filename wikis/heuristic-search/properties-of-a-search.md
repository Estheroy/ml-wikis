## Properties of A-search

After learning how A-search works, let’s learn some properties of it. As usual, let’s assume that:
* **Branching factor** is B
* The depth of the solution is D
* The maximum depth of the tree is Dm

Like BFS, A-search is **complete**. If the heuristic function h(n) is **admissible**, which in this case means that the shortest path heuristic is always less than or equal to the true shortest path via nodes, then A-search is also **optimal**. In the worst case, the time complexity of A-search is $$O(B^D)$$. 

However, similarly to greedy best-first search, A-search’s performance can be improved largely by using a well-designed heuristic function. The space complexity of A-search is similar to its time complexity.


Fundamentally, A-search is an improved version of greedy best-first search. A-search fixes the problem of the greedy best-first search while still maintaining the advantage of informed search.

