
## Properties of iterative deepening search

You may realize that IDS’ behavior is very similar to depth-first search. As usual, let’s first assume the given graph is a tree and:
* **Branching factor** is B
* The depth of the solution is D
* The maximum depth of the tree is Dm

If the graph is finite in space, then IDS is **complete**. IDS is also **optimal** when the edge costs are the same since it will find the solution that is the ‘closest’ to the root just like what BFS does. The time complexity of IDS is $$O(B^D)$$ since IDS will be stopped when find the shallowest solution node. The space complexity of IDS is $$O(BD)$$ which is linear because it only needs to record the route it currently searching on. So, Iterative deepening combines the benefits of depth-first and breadth-first search. Like depth-first search, its memory requirements are modest: $$O(BD)$$ to be precise. Like breadth-first search, it is complete when the branching factor is finite and optimal when the path cost is a non-decreasing function of the depth of the node.
