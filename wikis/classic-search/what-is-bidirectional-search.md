## What is bidirectional search?

As mentioned before, bidirectional search runs two simultaneous searches: one forward from the initial state, and one backward from the goal, stopping when the two meet in the middle. All the search algorithms we have introduced so far search in one direction which start from root and end at the goal. However, in bidirectional search, we need to handle not only letting the algorithm search from root to goal but also searching from the goal back to root. This special part requires a method for computing current node’s predecessor. 

For example, given a graph, the program should have a way to ‘imagine’ what it looks like before being finished. Also, in reality, we usually have just one problem but many solutions. In order to make bidirectional search work, we have to know how to gather all those solutions together to be one goal node.


<img src="/assets/image24.png" width="300" height="150" />
###### Here is a schematic view of a bidirectional search





