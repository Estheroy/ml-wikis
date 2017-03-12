## Properties of breadth-first search
After learning how BFS works, let’s learn some properties of BFS. First, let’s assume the given graph is a tree and:

* **Branching factor** is B

* The depth of the solution, or number of connections between the goal node and the starting node, is D
* The maximum depth of the tree, or max number of connections between the start node and any node is $$D_m$$

We can say that BFS is **complete** if B is finite. Also, if exploring each node has the same cost, then BFS is **optimal**, too. The time complexity of BFS is $$O(B^D)$$. The space complexity of BFS is $$O(B^D)$$ because BFS has to keep all the nodes it needs to explore in memory. So it’s clear that BFS is easy to implement and fine to use on some relatively small graph search. However, if the graph is large, the space of memory will be a big problem for BFS.
