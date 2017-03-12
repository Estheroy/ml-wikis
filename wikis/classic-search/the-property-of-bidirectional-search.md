## Properties of bidirectional search

Implementing a bidirectional search is not an easy job. Bidirectional search has some major advantages that make it worth it. Let’s assume we’re using BFS for both the forward and backward searches in the bidirectional search. Both BFS instances will only need to search half of the graph between the root and goal. 
So the time complexity of bidirectional search is $$O(B^{D/2})$$ which is much less than $$O(B^D)$$ of normal BFS. 
Besides, the space complexity is also only $$O(B^{D/2})$$.