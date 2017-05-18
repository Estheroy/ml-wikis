## Property of Minimax Algorithm

If the tree is finite, then minimax algorithm will always return a result. So, minimax algorithm is **complete**. Based on how it works, if the search time is enough and player’s opponent is also playing with the optimal strategy, minimax algorithm is also **optimal**. If the opponent is not optimal, then the player will always play better than the opponent.
Now let’s assume that:
* Branching factor is $$B$$
* The depth of the solution is $$D$$
* The maximum depth of the tree is $$D_m$$

Since minimax algorithm uses DFS to search the tree, its time complexity is $$O(B^{Dm})$$ and space complexity is $$O({BD}_m)$$. Minimax algorithm will return the best strategy that is least possible to make the player loose. However, minimax algorithm requires to traverse the whole tree and that is really time consuming. If the time for each move is not enough, minimax algorithm will fail to search through the whole tree and unable to return the best strategy. To fix this problem, we need some algorithms that can more wisely to choose which node to explore. 
