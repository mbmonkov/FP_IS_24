### 💫 Task 1

**Description:**

Define a function that accepts a graph, a whole number `k` and a node `n`. Return all the paths starting from `n` that are `k` nodes long. If the node is not present, throw an error.

Use the following types:

```haskell
type Node = Int
type Graph = [(Node, [Node])]
type Path = [Node]
```

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 0 1 == [[1]]
print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 1 1 == [[1, 2], [1, 3]]
print $ simplePaths [(1, [2, 3, 4]), (2, [3, 4]), (3, []), (4, [])] 1 1 == [[1,2],[1,3],[1,4]]
print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 2 1 == [[1, 2, 3], [1, 2, 4]]
print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 1 2 == [[2,3],[2,4]]
print $ simplePaths [(1, [2, 3]), (2, [3]), (3, []), (4, [])] 1 2 == [[2,3]]
```

### ⭐ Task 2

**Description:**

Let `(x, y, z)` be a vector representing the nodes of a binary tree such that `x` is the value of the current node, `y` and `z` are the values of the child nodes. Define a function that returns the leaves of such a tree.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
-- you may get slightly different results eg. [3, 4, 5] on test 1 <- not a problem
print $ listLeaves [(1, 2, 3), (2, 4, 5)] == [4, 3, 5]
print $ listLeaves [(2, 4, 5), (1, 2, 3)] == [4, 5, 3]
print $ listLeaves [(1, 2, 3), (3, 4, 5), (5, 6, 9)] == [2, 4, 6, 9]
```

### ⭐ Task 3

**Description:**

By using the `Shape` data type, define the following functions:

1. perimeter;
2. area.

Recap:

Perimeter of a cylinder: 4*r + 2*h
Area of a cylinder: 2*pi*r*h + 2*pi*r*r.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ perimeter (Circle 5) == 31.41592653589793
print $ perimeter (Rectangle 2.5 4.5) == 14
print $ perimeter (Rectangle 5.5 20.6) == 52.2
print $ perimeter (Triangle 5.3 3.9 4.89) == 14.09
print $ perimeter (Cylinder 2.5 10) == 30

print $ area (Circle 5) == 78.53981633974483
print $ area (Rectangle 2.5 4.5) == 11.25
print $ area (Rectangle 5.5 20.6) == 113.30000000000001
print $ area (Triangle 5.3 3.9 4.89) == 9.127927385194024
print $ area (Cylinder 20 30) == 6283.185307179587
```

### 🌟 Task 4

**Description:**

By using the `Shape` data type, define two functions that accept a list of shapes and:

1. The first returns their areas;
2. The second returns the shape with the biggest area.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. `getAreas` is defined on a functional level.
4. `maxArea` is defined using folding.

**Test cases:**

```haskell
print $ getAreas [Circle 5, Rectangle 2.5 4.5, Rectangle 5.5 20.6, Triangle 5.3 3.9 4.89, Cylinder 20 30] == [78.53981633974483,11.25,113.30000000000001,9.127927385194024,6283.185307179587]
print $ maxArea [Circle 5, Rectangle 2.5 4.5, Rectangle 5.5 20.6, Triangle 5.3 3.9 4.89, Cylinder 20 30] == Cylinder 20.0 30.0
```