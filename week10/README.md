### 🌟 Task 1

**Description:**

For the trees in task 1 that we solved in class define the following functions:

```text
​​height (number of nodes along the longest branch);​
average - returns the average of the nodes (should work only for trees that store numbers in their nodes);
​​sumLeaves​ - returns the sum of the leaves (should work only for trees that store numbers in their nodes);
areEqual - checks whether two trees are identical;
setLevels - replaces the values in all nodes with the vector ("level", "value");
mirrorTree - returns the symmetric tree.
```

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ height numberBTree == 4
print $ height charBTree == 3

print $ average numberBTree == 16.22
--print $ average charBTree -- should not work

print $ sumLeaves numberBTree == 119
--print $ sumLeaves charBTree -- shouldn't work

print $ areEqual numberBTree (Node 5 (Node 12 (Node 1 (Node 96 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 4 (Node 2 Nil Nil) (Node 5 Nil Nil))) == False
print $ areEqual charBTree charBTree == True
print $ areEqual numberBTree (Node 5 (Node 12 (Node 1 (Node 96 Nil Nil) Nil) (Node 0 Nil Nil)) (Node 8 (Node 2 Nil Nil) (Node 5 Nil (Node 21 Nil Nil)))) == False

print $ setLevels numberBTree == Node (0,5) (Node (1,12) (Node (2,1) (Node (3,96) Nil Nil) Nil) (Node (2,0) Nil Nil)) (Node (1,4) (Node (2,2) Nil Nil) (Node (2,5) Nil (Node (3,21) Nil Nil)))
print $ setLevels charBTree == Node (0,'k') (Node (1,'a') (Node (2,'h') Nil Nil) (Node (2,'s') Nil Nil)) (Node (1,'l') (Node (2,'e') Nil Nil) (Node (2,'l') Nil Nil))

print $ mirrorTree numberBTree == Node 5 (Node 4 (Node 5 (Node 21 Nil Nil) Nil) (Node 2 Nil Nil)) (Node 12 (Node 0 Nil Nil) (Node 1 Nil (Node 96 Nil Nil)))
print $ mirrorTree charBTree == Node 'k' (Node 'l' (Node 'l' Nil Nil) (Node 'e' Nil Nil)) (Node 'a' (Node 's' Nil Nil) (Node 'h' Nil Nil))
```

### 🌟 Task 2

**Description:**

Define a function that returns the depth of the shallowest green node. Use the following types:

```haskell
data Color = Red | Green | Blue
data Tree = Empty | Node Color Tree Tree
```

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test case:**

```text
colorTree:
       Blue
      /    \
   Red      Red
   /        /  
Green     Blue  
          /   \
       Green  Red
```

```haskell
print $ minDepthGreenNode colorTree == 2
```

### 🌟 Task 3

**Description:**

The nodes in the following picture resemble the lower and higher bounds of an interval (the first number will always be lower than the second). Define a function that checks whether such a binary tree is ordered according to the relation *subinterval*.

![Alt text](assets/task11_1.png?raw=true "task11_1.png")

![Alt text](assets/task11_2.png?raw=true "task11_2.png")

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ ordered t1 == True
print $ ordered t2 == False
```

### 🌟 Task 4

**Description:**

For an algebraic type representing an **n-ary** tree, define a predicate that checks whether it is a graceful tree. We say that a tree is a graceful tree if the absolute difference between every child node and its father is an even number.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```text
t1:
   1
/ / \ \
3 5  7 9

t2:
  7
  |
  9
 / \
5   2
```

```haskell
print $ isGraceful t1 == True
print $ isGraceful t2 == False
```