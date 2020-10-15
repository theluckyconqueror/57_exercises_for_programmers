# Exercise 2 - Counting the Number of Characters

## Example Output

```
$ What's the input string? LC
LC has 2 characters.

```

## Constraints
- The output must contain the original string.
- Use 1 output statement to build the output.
- Use Ruby's built-in method to find the length of the string.

## Challenges
* If no data is entered, tell the user they need to enter something.
* Implement a graphical interface that updates the character count each time a key is pressed.

### Test Plan

NOTE: The test plan does not cover the challenges. 

```
Input
- LC

Expected Output
- LC has 2 characters
```

```
Input
- LC Was Here

Expected Output
- LC Was Here has 9 characters
```

```
Input
- nil

Expected Output
- Please enter some data
```

```
Input
- ""

Expected Output
- Please enter some data
```


```
Input
- LC 2020

Expected Output
- LC 2020 has 6 characters
```

```
Input
- LC!

Expected Output
- LC! has 3 characters
```

```
Input
- LC 2020!

Expected Output
- LC! has 7 characters
```

```
Input
- LC ✅

Expected Output
- LC has 3 characters
```