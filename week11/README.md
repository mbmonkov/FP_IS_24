### 🌟 Task 1

**Description:**

Define a function that accepts an infinite list of numbers [x<sub>1</sub>, x<sub>2</sub> .. ] and returns a function that for every `x` and `y` calculates the expression (x - x<sub>1</sub>)(x - x<sub>2</sub>) .. (x - x<sub>y</sub>).

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test cases:**

```text
If g is myPoly [2.7, 3.0 ..]
    then g 2.2 3 -> -0.4399999999999998
```

### 🌟 Task 2

**Description:**

Define a function that accepts a list of countries and returns the name of the country with the highest capital, i.e. the capital on the highest elevation.

Use the following types:

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

**Test case:**

```haskell
print $ highestCapital [(Country "Bulgaria" "Sofia" [(City "Varna" 0 16), (City "Plovdiv" 120 14), (City "Sofia" 420 13)]), (Country "Germany" "Berlin" [(City "Munchen" 200 15), (City "Berlin" 150 12), (City "Ulm" 210 15)]), (Country "France" "Paris" [(City "Paris" 180 15), (City "Nice" 0 14), (City "Lyon" 500 13)])] == "Bulgaria"
```

### ⭐ Task 3

**Description:**

Define a function that returns the depth of the deepest blue node.

Use the following types:

```haskell
data Color = Red | Green | Blue
data Tree = Empty | Node Color Tree Tree
```

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.

**Test case:**

`colorTree`:

```text
        Blue
        /    \
     Red     Red
    /        /  
Green     Blue  
          /   \
      Green   Red
```

```haskell
print $ maxDepthBlueNode colorTree == 2
```

### 🌟 Task 4

**Description:**

![tree_task2](assets/fh_task2.png?raw=true)

**Acceptance criteria:**

1. Add one new test case. Place a comment after it with the words `my test`.
2. All tests pass.
3. The task is solved using folding.

**Test case:**

```haskell
print $ closestAverage [(Temp 1 23.6), (Temp 6 24.2), (Temp 11 24.2), (Temp 16 21.2), (Temp 21 23.8), (Temp 26 26.5), (Temp 31 24.5)]
```