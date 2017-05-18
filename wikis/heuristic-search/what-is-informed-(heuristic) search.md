## What is informed (heuristic) search?

Classic search algorithms such as breadth-first search, depth-first search and uniform-cost search are easy to implement and they search only based on information that has already been provided by the problem. Those algorithms will traverse the whole search tree until they hit a solution, or else exhaust the graph. These are also called uninformed search algorithms or blind search algorithms. Uninformed search algorithms work well on small search graphs. 


However, when the problem is more complex and the search tree is bigger, uninformed search algorithms becomes unreliable or even intractable. For these sorts of problems, we use informed search (or heuristic search). Unlike classic search algorithms, informed search algorithms can use the knowledge beyond the problem definition itself to try paths by order of ‘promise,’ so to find solutions efficiently. To get this extra information, informed search algorithms use a **heuristic function h(n)**.


Informed search algorithms also employ an **evaluation function f(n)** to help decide which nodes to explore first. Usually search algorithms will explore nodes in ascending order of associated value of evaluation function. Informed search algorithms vary primarily across the choice of evaluation function. Heuristic functions tend to inform evaluation functions, in fact, the latter is usually a logical implementation of the former.

**Greedy best-first search (Greedy BFS)** is a basic informed search algorithm that always expands the node that appears to be closest to goal.

**A-search** is one of the most famous informed search algorithm that combines the greedy best-first search with the uniform-cost search.