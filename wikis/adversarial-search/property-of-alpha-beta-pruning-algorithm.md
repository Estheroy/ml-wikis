## Property of alpha-beta pruning algorithm

Since the alpha-beta pruning algorithm is guaranteed to give the same answer as the minimax algorithm, it is both **complete** and **optimal** Now let’s assume that:
* **Branching factor** is B
* The depth of the solution is D
* The maximum depth of the tree is $$D_m$$


The efficiency of pruning the tree is largely affected by the move ordering in the game. In the game tree example above, if the algorithm tries the move D first, followed by C and then B, the alpha-beta search will prune nothing and traverse the same number of nodes as minimax did. So, if we can order the moves generated perfectly, the time complexity can be reduced to $$O(B^{D_m/2})$$. This means, within the same amount of time, alpha-beta pruning search can search twice as deeply. The space complexity is still $$O({BD}_m)$$.