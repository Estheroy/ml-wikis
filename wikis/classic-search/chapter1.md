## What is graph search algorithm?

In computer science, graph search (also known as graph traversal) refers to the process of visiting (checking and/or updating) each vertex in a **graph** or **tree**. Graph algorithms search a graph starting from some first node. The first node, however chosen, is called the **source node**. The major difference between those search algorithms is the specific node exploring strategy unique to each. Every search algorithms has its own unique properties and methods. To analysis those algorithms’ property, computer scientists introduced concepts such as **branching factor** and **complete and optimal**.


For each algorithm, this article will explain and illustrate the steps taken by different search algorithms. For any example presented in this article, we, as humans, can see the full graph and know what nodes are connected to what. For these small examples where we have all the information, it’s easy to miss the point of search algorithms. The algorithms described here are the steps someone should take if they _cannot see the whole graph_. Specifically, these algorithms work under the idea of **exploration**, which is that the edges on some node can be known by _exploring_ that node, and that in so doing, new potential routes of exploration are opened up. Our algorithms assume some starting node, and then explore the nodes connected to that start, find the next-level connections in those nodes, and repeat the process using some strategy.


Exploration also yields an additional use. If we explore the goal node, then we will be able to see that we have reached the goal, and our algorithm has finished. Again, this is trivial when the whole graph is visible, but needs to be understood for all the cases where the graph is not so accessible.


* **Breadth-first search (BFS)** is one of the simplest search algorithms. BFS will repeatedly choose the closest unexplored node, explore it, and repeat the process until the whole graph is explored or the desired result is found. The property of breadth-first search is easy to understand and many advanced search algorithms are based on the idea of BFS. 

* **Depth-first search (DFS)** is another well-known search algorithm. Starting from the source node DFS will repeatedly explore the deepest reachable unexplored node before backtracking. DFS will repeat this rule until all the nodes are explored or desired result is found. Depth-first search has several useful properties including, famously, space saving. When dealing with a large graph, DFS-like algorithms are usually preferred.


* **Uniform-cost search (UCS)** is also a basic search algorithm. UCS is used for graphs where each edge has its own associated cost. Uniform-cost search will calculate every node’s search path’s cost and always explore the least-cost unvisited node. Uniform-cost search has properties that are very similar to BFS.

* **Depth-limited search (DLS)** is a variation of DFS. It works very similar to DFS except that the program will store a max depth, past which the algorithm will not search. Since depth-limited search is a variation of DFS, its properties are the same as DFS’ except that DLS is guaranteed to end.

* **Iterative deepening search (IDS)** is a variation of DLS. It runs DLS repeatedly, with a progressively increasing depth. Iterative deepening search’s properties combine the advantages of BFS and DFS.

* **Bidirectional search** is a search algorithm that differs from all previously introduced algorithms. The idea behind bidirectional search is to run two simultaneous searches—one forward from the initial state and the other backward from the goal—hoping that the two searches meet in the middle. If they meet, then the algorithm will find a solution path.
















