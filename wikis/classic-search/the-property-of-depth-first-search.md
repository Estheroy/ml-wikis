## Properties of depth-first search

After learning how DFS works, let’s learn some properties of DFS. First, let’s assume the given graph is a tree and:
* **Branching factor** is B
* The depth of the solution is D
* The maximum depth of the tree is $$D_m$$

If the graph is finite in length, then DFS is **complete**. However, unlike BFS, DFS is not **optimal** (if the goal has more than one path from the source that leads to it, then DFS is not guaranteed to find the shortest one).

The time complexity of DFS is $$O(B^{Dm})$$ since DFS will search as deep as possible. So, if $$D_m$$ is much larger than D, the time complexity, or number of steps, is terrible. The space complexity of DFS is $$O({BD}_m)$$ which is linear over the branching factor because DFS only needs to record the route it is currently searching on. So in general, DFS is slower than BFS if the graph is relatively sparse. Because, DFS is not guaranteed to find the optimal solution, it has limited use, however, DFS is a strong algorithm for saving space. To solve or reduce the problem of DFS, there exist some variation of DFS such as **Depth-limited search** and **Iterative deepening search** which are covered in a proceeding section.