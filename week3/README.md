### 🌟 Task 1

**Description:**

Define a function that removes **the first** occurrence of a digit in a number by going from right to left.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```haskell
print $ removeFirstOccurrence 16366 5 == 16366
print $ removeFirstOccurrence 110 1 == 10
print $ removeFirstOccurrence 15365 5 == 1536
print $ removeFirstOccurrence 15360 0 == 1536
print $ removeFirstOccurrence 15300 0 == 1530
print $ removeFirstOccurrence 15365 1 == 5365
print $ removeFirstOccurrence 35365 3 == 3565
print $ removeFirstOccurrence 1212 1 == 122
print $ removeFirstOccurrence 1212 2 == 121
print $ removeFirstOccurrence (removeFirstOccurrence 1212 1) 1 == 22
```

### ⭐ Task 2

**Description:**

Define a function that sorts a number in descending order.

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```haskell
print $ sortN 1714 == 7411
print $ sortN 123450 == 543210
print $ sortN 123405 == 543210
print $ sortN 123045 == 543210
print $ sortN 120345 == 543210
print $ sortN 102345 == 543210
print $ sortN 8910 == 9810
print $ sortN 321 == 321
print $ sortN 29210 == 92210
print $ sortN 1230 == 3210
print $ sortN 55345 == 55543
print $ sortN 14752 == 75421
print $ sortN 329450 == 954320
print $ sortN 9125 == 9521
```

### 💫 Task 3

**Description:**

Define a function that accepts two real numbers and calculates the `n`-th partial sum from the following sequence:

![Alt text](assets/sequence.png?raw=true "sequence")

**Acceptance criteria:**

1. All tests pass.

**Test cases:**

```haskell
-- you may get slightly different results eg. -1.047619047619100 on test 4 <- not a problem
print $ calcSeriesSum 1 0 == -2.0 -- x = 1, n = 0
print $ calcSeriesSum 1 1 == -0.6666666666666667
print $ calcSeriesSum 1 2 == -1.2000000000000002
print $ calcSeriesSum 1 3 == -1.047619047619048
print $ calcSeriesSum 1 4 == -1.0814814814814817
print $ calcSeriesSum 1 5 == -1.0753246753246755
print $ calcSeriesSum 1 6 == -1.0762718762718764
print $ calcSeriesSum 10 34 == -0.10607741100173662
```

### ⭐ Task 4

**Description:**

Define a function `sumDivisibleNumbers start finish k` that returns the sum of all numbers from the interval [`start`, `finish`] whose digits sum up to a number that is evenly divisible by `k`.

**Acceptance criteria:**

1. All tests pass.
2. A linearly recursive process is implemented.

**Test cases:**

```haskell
print $ sumDivisibleNumbers 50 10 5 == 290
print $ sumDivisibleNumbers 0 10 5 == 5
print $ sumDivisibleNumbers 0 100 5 == 990
print $ sumDivisibleNumbers 100 0 5 == 990
```

### 🌟 Task 5

**Description:**

A number - `x`, is a pentagonal number if we can plot `x` points in the form of a pentagon on a plain.

For example:

![Alt text](assets/pentagon.png?raw=true "pentagon")

Define a function that accepts a natural number - `n`, and returns the `n`-th pentagonal number.

**Acceptance criteria:**

1. All tests pass.
2. A linearly iterative process is implemented.

**Test cases:**

```haskell
print $ p 1 == 1
print $ p 2 == 5
print $ p 3 == 12
print $ p 4 == 22
print $ p 5 == 35
print $ p 6 == 51
```