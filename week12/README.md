### ⭐ Task 1

**Description:**

Define a new data type representing a binary tree of whole numbers. Define a function that returns the sum of the nodes with values between `L` and `R` (inclusive).

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

`firstTree`:

![Alt text](assets/fh_task1_1.png?raw=true "fh_task1_1.png")

`secondTree`:

![Alt text](assets/fh_task1_2.png?raw=true "fh_task1_2.png")

```haskell
print $ rangedSum firstTree 100 50 == 0 -- (L = 100, R = 50)
print $ rangedSum firstTree 7 15 == 32 -- (L = 7, R = 15)
print $ rangedSum firstTree 15 7 == 32 -- (L = 15, R = 7)
print $ rangedSum secondTree 6 10 == 23 -- (L = 6, R = 10)
print $ rangedSum secondTree 10 6 == 23 -- (L = 10, R = 6)
```

### 🌟 Task 2

**Description:**

Define a function that modifies a `BST` so that every node `n` has a new value equal to the sum of the values of the original tree that are greater than or equal to the value of `n`.

![Alt text](assets/fh_task2.png?raw=true "fh_task1_2.png")

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test case:**

```haskell
print $ convert tree == (Node 30 (Node 36 (Node 36 Nil Nil) (Node 35 Nil (Node 33 Nil Nil))) (Node 21 (Node 26 Nil Nil) (Node 15 Nil (Node 8 Nil Nil))))
```

### ⭐ Task 3

**Description:**

A binary tree is a `cone` if at every level the sum of the nodes is greater than than the sum at the previous level.

For a binary tree made up of **whole numbers** define the following functions:

- a function that returns the sum of the nodes at level `k`;
- a function that returns whether a tree is a `cone`.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

`numberBTree`:

![Alt text](assets/fh_task5.png?raw=true "assets/fh_task5.png")

```haskell
print $ levelSum numberBTree 1 == 11 -- (5 + 6)
print $ cone numberBTree == True
```

### ⭐ Task 4

**Description:**


**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

![Alt_text](assets/pic2.png "p2")
![Alt_text](assets/pic1.png "p1")