## What is adversarial search?

Teaching AI to play games is a famous area of study. **Adversarial search** is a strategy used to play **deterministic perfect information games** such as chess or checkers, that a computer can use to play effectively. Adversarial search algorithms are similar to graph search, but work under the assumption that opponents will maximize their own advantage, and that there exists a time limit for the search.

This article focuses on the simplest two person games, like connect four. The **Minimax algorithm** is an algorithm works on the **deterministic two-person games**, which will be introduced below. The algorithm will search the whole tree, including the opponent’s decisions, for a solution that maximize its own advantage and minimize opponent’s advantage.

**The Alpha-beta pruning algorithm** is an algorithm that works similar to minimax algorithm but with a special **backtracking** strategy. It will stop searching down a branch of tree when it determines that branch is a dead end.
