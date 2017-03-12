## Properties of depth-limited search

Although DLS is same as DFS with a depth limit, its property is different from DFS’. First, let’s assume the given graph is a tree and:
* **Branching factor** is B
* The depth of the solution is D
* The maximum depth of the tree is Dm

First of all DLS is **not complete**i n general. If the optimal solution node is still deeper than the depth limit L, DLS will never find the solution. Since DLS is not complete, it is **not optimal**, too.

The time complexity of DLS is $$O(B^L)$$ which is much better than DFS’ if L is much smaller than $$D_m$$. The space complexity of DLS is $$O(BL)$$ which is linear because same as DFS, DLS only needs to record the route it currently searching on. Compare to DFS, DLS is doing better on time complexity. 
However, DLS may also be unable to find the solution. If a search algorithm can’t find the solution even though the solution exists, then that algorithm is very unlikely to be preferred. However, understanding DLS is crucial to understanding and dealing with the disadvantages of BFS, and leads to an algorithm called **iterative deepening search**.