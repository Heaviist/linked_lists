# linked_lists
The Odin Project's Linked Lists project in Ruby

# Assignment
Create a linked list in ruby

# Goal
Create the following methods:
1. #append(value) adds a new node containing value to the end of the list
2. #prepend(value) adds a new node containing value to the start of the list
3. #size returns the total number of nodes in the list
4. #head returns the first node in the list
5. #tail returns the last node in the list
6. #at(index) returns the node at the given index
7. #pop removes the last element from the list
8. #contains?(value) returns true if the passed in value is in the list and otherwise returns false.
9. #find(value) returns the index of the node containing value, or nil if not found.
10. #to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( value ) -> ( value ) -> ( value ) -> nil
11. Extra Credit: #insert_at(value, index) that inserts a new node with the provided value at the given index.
12. Extra Credit: #remove_at(index) that removes the node at the given index.

# Expectations and challenges
1. Generally this will be interesting to try to wrap my head around the concept of linked lists and how this actually works in ruby.
2. It will probably take some further inspection and reading to get a proper feel for it.
3. Some of the methods above seem obvious, but I'm sure there will be some surprises along the way.
4. Somehow I feel like proper linking from one node to the next will take some getting used to.

# Results and Evaluation
The code achieves all results set in the goals
1. Once the concept is clear, it becomes relatively straightforward as long as you keep in mind at which node you're working. It was really helpful to use clear variable names that made sense for this assigment.
2. Once the first method was written, everything kind of followed naturally

# Notes for future revisiting
1. I have considered using an @tail instance variable. Downside is keeping @tail in memory, without pointers from back to front, I don't see it having much value, since you would have to iterate to that point every time anyway. #pop for example would still have to change the previous node's next variable to nil. With new insights this might be useful to investigate further.
2. #pop now returns the removed node. It's not strictly necessary but felt elegant. It does make the method longer than the recommended 10 lines.
3. It might be interesting to consider adding an instance variable @size that keeps track of the number of entries in the list. There are obvious downsides to this though, as bookkeeping would have to be done in almost all methods and you have to keep it in memory, but maybe there are situations where this makes way more sense...
4. Obviously, better would be to split the files into a main.rb in the /root folder and a /lib folder containing node.rb and linked_list.rb, but for now I do like my file names related to some history of the topic.
