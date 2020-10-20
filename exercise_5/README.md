# Exercise 5 - Simple Math

## Example Output

```
$ What is the first number? 10
  What is the second number? 5
  10 + 5 = 15
  10 - 5 = 5
  10 * 5 = 50
  10 / 5 = 2

```

## Constraints
- Convert user input to numbers.
- Seperate I/O from type conversion and any other processing.
- Use one output statement with line breaks in appropriate spots.

## Challenges
* Refactor input handling so that the user cannot enter any data that is not a number.
* Don't allow the user to enter a negative number.
* Create a method for each computation.
* Create a GUI that automatically updates the computations when any of the inputs change.

### Test Plan


```
Input
- Number One: 10
- Number Two: 5

Expected Output
  10 + 5 = 15
  10 - 5 = 5
  10 * 5 = 50
  10 / 5 = 2
```

```
Input
- Number One: 10
- Number Two: 5.0

Expected Output
  10 + 5 = 15.0
  10 - 5 = 5.0
  10 * 5 = 50.0
  10 / 5 = 2.0
```

```
Input
- Number One: 10
- Number Two: Five

Expected Output
- Please enter a number and try again. Exiting.
```

```
Input
- Number One: 5
- Number Two: 10

Expected Output
  5 + 10 = 15
  5 - 10 = - 5
  5 * 10 = 50
  5 / 10 = 0.5
```