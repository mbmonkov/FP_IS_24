## ⭐ Task 1

**Description:**

Define a function that finds the sum of the elements in a list.

**Acceptance criteria:**

1. All tests pass.
2. The solution does not contain `if-then-else` statements.
3. Add one new test case. Place a comment after it with the words `my test`.
4. `mySumRecNonPM` is defined using a linearly recursive process without pattern matching.
5. `mySumRecPM` is defined using a linearly recursive process with pattern matching.
6. `mySumFunc` is defined using functions that work with lists.

**Test cases:**

```haskell
print $ mySumRecNonPM [] == 0
print $ mySumRecNonPM [1, 2, 3] == 6

print $ mySumRecPM [] == 0
print $ mySumRecPM [1, 2, 3] == 6

print $ mySumFunc [] == 0
print $ mySumFunc [1, 2, 3] == 6
```

## ⭐ Task 2

**Description:**

Define a predicate that checks whether an element is present in a list.

**Acceptance criteria:**

1. All tests pass.
2. The solution does not contain `if-then-else` statements.
3. Add one new test case. Place a comment after it with the words `my test`.
4. `isPresentRecNonPM` is defined using a linearly recursive process without pattern matching.
5. `isPresentRecPM` is defined using a linearly recursive process with pattern matching.
6. `isPresentFunc` is defined using functions that work with lists.

**Test cases:**

```haskell
print $ isPresentRecNonPM 0 [] == False
print $ isPresentRecNonPM 0 [1, 2, 3] == False
print $ isPresentRecNonPM 0 [0, -1, 2] == True

print $ isPresentRecPM 0 [] == False
print $ isPresentRecPM 0 [1, 2, 3] == False
print $ isPresentRecPM 0 [0, -1, 2] == True

print $ isPresentFunc 0 [] == False
print $ isPresentFunc 0 [1, 2, 3] == False
print $ isPresentFunc 0 [0, -1, 2] == True
```

## ⭐ Task 3

**Description:**

Define a function that returns a list of the prime numbers with at least three digits in a given interval.

**Acceptance criteria:**

1. All tests pass.
2. The solution does not contain `if-then-else` statements.
3. Add one new test case. Place a comment after it with the words `my test`.
4. `primesInRangeLC` uses list comprehension in one line of code.
5. `primesInRangeHOF` uses higher order functions in one line of code.

**Test cases:**

```haskell
print $ primesInRangeLC 1 100 == []
print $ primesInRangeLC 998 1042 == [1009,1013,1019,1021,1031,1033,1039]
print $ primesInRangeLC 120 666 == [127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,199,211,223,227,229,233,239,241,251,257,263,269,271,277,281,283,293,307,311,313,317,331,337,347,349,353,359,367,373,379,383,389,397,401,409,419,421,431,433,439,443,449,457,461,463,467,479,487,491,499,503,509,521,523,541,547,557,563,569,571,577,587,593,599,601,607,613,617,619,631,641,643,647,653,659,661]
print $ primesInRangeLC 420 240 == [241,251,257,263,269,271,277,281,283,293,307,311,313,317,331,337,347,349,353,359,367,373,379,383,389,397,401,409,419]
print $ primesInRangeHOF 1 100 == []
print $ primesInRangeHOF 998 1042 == [1009,1013,1019,1021,1031,1033,1039]
print $ primesInRangeHOF 120 666 == [127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,199,211,223,227,229,233,239,241,251,257,263,269,271,277,281,283,293,307,311,313,317,331,337,347,349,353,359,367,373,379,383,389,397,401,409,419,421,431,433,439,443,449,457,461,463,467,479,487,491,499,503,509,521,523,541,547,557,563,569,571,577,587,593,599,601,607,613,617,619,631,641,643,647,653,659,661]
print $ primesInRangeHOF 420 240 == [241,251,257,263,269,271,277,281,283,293,307,311,313,317,331,337,347,349,353,359,367,373,379,383,389,397,401,409,419]
```

## ⭐ Task 4

**Description:**

Define a function that returns the sum of the uneven numbers in a range.

**Acceptance criteria:**

1. All tests pass.
2. The solution does not contain `if-then-else` statements.
3. Add one new test case. Place a comment after it with the words `my test`.
4. `sumUnevenLC` uses list comprehension in ONE line of code.
5. `sumUnevenHOF` uses higher order functions in ONE line of code.

**Test cases:**

```haskell
print $ sumUnevenLC 5 50 == 621
print $ sumUnevenLC 50 1 == 625
print $ sumUnevenLC 564 565 == 565

print $ sumUnevenHOF 5 50 == 621
print $ sumUnevenHOF 50 1 == 625
print $ sumUnevenHOF 564 565 == 565
```

## 🌟 Task 5

**Description:**

Define a function that checks whether the digits of a non-negative number are ordered in non-decreasing order. 

**Acceptance criteria:**

1. All tests pass.
2. The solution does not contain `if-then-else` statements.
3. Add one new test case. Place a comment after it with the words `my test`.
4. The implementation should be on one line.
5. The implementation does not include *div* and/or *mod*.

**Test cases:**

```haskell
print $ isAscending 0 == True
print $ isAscending 10 == False
print $ isAscending 123 == True
print $ isAscending 1233 == True
print $ isAscending 12332 == False    
```

## 💫 Task 6

**Description:**

Define a function that returns the sum of the first *n* prime numbers that contain a digit *d*.

> **Hint**: You can define an infinite list by using this construction: [1 .. ]. This defines a list with no upper bound. Now, use functions such as 'take' and 'drop' (refer to them in 'notes.txt') to get only the first 'n' numbers that satisfy the condition. For example: take ??? [1 .. ].

**Acceptance criteria:**

1. All tests pass.
2. The solution does not contain `if-then-else` statements.
3. Add one new test case. Place a comment after it with the words `my test`.
4. The solition uses higher order functions.
5. The solition is defined on one line of code.

**Test cases:**

```haskell
print $ sumSpecialPrimes 5 2 == 392 -- n = 5, d = 2
print $ sumSpecialPrimes 5 3 == 107
print $ sumSpecialPrimes 10 3 == 462
```