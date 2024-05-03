### Task 1

**Description:**

Define a function that accepts a unary function and a list of numbers [y<sub>1</sub>, y<sub>2</sub> .. y<sub>n</sub>] and returns a function that accepts `x` and calculates the expression: y<sub>1</sub>f(x) + y<sub>2</sub>f(x<sup>2</sup>) + .. + y<sub>n</sub>f(x<sup>n</sup>) .

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. The task is solved using 1 line of code.
4. The task is solved using typeclasses.

**Test cases:**

```haskell
print $ (sumExpr (2+) [0, 1, 2, 3]) 2 == 80
print $ (sumExpr (*0.8) [0, 1, 2, 3, 4, 5]) 10 == 4345680.0
```

### Task 2

**Description:**

Define a function that accepts a list of countries and returns the name of the country with the lowest average yearly temperature (the `coldest` country).

The following types can be used to improve readability of function declarations:

```haskell
type Name = String
type Capital = Name 
type AvgYearlyTemperature = Double
type Elevation = Int

data City = City Name Elevation AvgYearlyTemperature
data Country = Country Name Capital [City]
```

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. The task is solved using folding.

**Test cases:**

```haskell
print $ coldestCapital [(Country "Bulgaria" "Sofia" [(City "Varna" 0 16), (City "Plovdiv" 120 14), (City "Sofia" 420 13)]), (Country "Germany" "Berlin" [(City "Munchen" 200 15), (City "Berlin" 150 12), (City "Ulm" 210 15)]), (Country "France" "Paris" [(City "Paris" 180 15), (City "Nice" 0 14), (City "Lyon" 500 13)])] == "Germany"
print $ coldestCapital [(Country "Bulgaria" "Sofia" [(City "Varna" 0 (-16)), (City "Plovdiv" 120 34), (City "Sofia" 420 13)]), (Country "Germany" "Berlin" [(City "Munchen" 200 (-15)), (City "Berlin" 150 12), (City "Ulm" 210 15)]), (Country "France" "Paris" [(City "Paris" 180 15), (City "Nice" 0 14), (City "Lyon" 500 13)])] == "Germany"
```

### Task 3

**Description:**

By using the algrbraic type we defined in class (task 1) define a function that accepts a list of points and returns a vector `(Double, Point, Point)` that represents the closest distance between any two points, and the points themselves.

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. The task is solved using folding.

**Test cases:**

```haskell
print $ getClosestDistance [(ThreeD 4 5 6), (ThreeD 2 5 10)] == (4.47213595499958,ThreeD 4.0 5.0 6.0,ThreeD 2.0 5.0 10.0)
print $ getClosestDistance [(ThreeD 4 5 6), (ThreeD 2 5 10), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2)] == (4.47213595499958,ThreeD 4.0 5.0 6.0,ThreeD 2.0 5.0 10.0)
print $ getClosestDistance [(ThreeD 4 5 6), (ThreeD 2 5 10), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] == (2.8284271247461903,ThreeD 4.0 5.0 6.0,ThreeD 6.0 5.0 4.0)

print $ getClosestDistance [(TwoD 4 6), (TwoD 5 10), (TwoD 5 29), (TwoD 1 45), (TwoD 0 2), (TwoD 69 42)] == (4.123105625617661,TwoD 4.0 6.0,TwoD 5.0 10.0)
```

### Task 4

**Description:**

Define a function that returns all the uncles of a node in a tree. An uncle is a brother of a parent.

![Alt text](assets/t.png?raw=true "t.png")

Use the following type and representation:

```haskell
type Tree = [(Int, [Int])]

t :: Tree
t = [(1,[2,3,4]),(2,[5,6]),(3,[7]),(4,[8,9]),(5,[]),(6,[10]),(7,[]),(8,[]),(9,[]),(10,[])]
```

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```haskell
print $ findUncles t 5 == [3,4]
print $ findUncles t 7 == [2,4]
print $ findUncles t 10 == [5]
```
