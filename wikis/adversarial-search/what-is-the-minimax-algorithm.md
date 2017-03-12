## What is the minimax algorithm?

In most deterministic games, players alternatively make moves on the game until finally one player meets some win conditions. So, each time when a player is making a move, he needs to consider his opponent’s move that may minimize the player’s utility and choose the move that has the best achievable utility. A utility measure defined in this way is called the minimax value.

The minimax algorithm computes a decision from the current state. It uses a simple recursive computation of the minimax values of each successor state, directly implementing the defining equations. The recursion proceeds all the way down to the leaves of the search tree, and then the minimax values are backed up through the tree as the recursion unwinds.

<img src="/assets/image06.png" width="790" height="250" />
###### The graph above shows a minimax search tree. Edges here is the move that each player may make. The ▲ nodes called “MAX nodes” stand for current player. The ▼ node called “MIN nodes” represent current player’s opponent. Each node has its own minimax based on the result it may lead to. The nodes on the very bottom is the final result which already have their own values.


If we run minimax algorithm on the graph above, the algorithm will traverse the whole tree with DFS and update each node’s minimax value according to the final node it may lead to. In this case, value of node B is 3 because it’s a MIN node and 3 is the smallest value that it can lead to. So similarly, node C’s minimax value is 2 and node D’s minimax value is 2. For node A, since it’s a MAX node, it prefers the successor that has the max value. So, node A’s minimax value is 3 and the best action returned by the minimax algorithm will be a1.

