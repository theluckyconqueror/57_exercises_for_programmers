# Exercise 8 - Pizza Party

## Example Output

```
$ How many people? 8
How many pizzas do you have? 2
How many slices per pizza? 8

8 people with 2 pizzas
Each person gets 2 pieces of pizza.
There are 0 leftover pieces.

```

## Constraints


## Challenges
* Validate input so we only accept numeric values.
* Change output to deal with pluralization.
* Create a different version that asks for the number of people and the number of pieces each person wants then calculate how many full pizzas are needed.

### Test Plan

NOTE: The test plan does not cover the challenges. 

```
Input - 0 leftover slices.
- People: 8
- Pizzas: 2
- Slices per pizza: 8

Expected Output
- 8 people with 2 pizzas.
- Each person gets 2 pieces.
- There are 0 leftover pieces. 
```

```
Input -  1+ leftover slices.
- People: 2
- Pizzas: 3
- Slices per pizza: 5

Expected Output
- 2 people with 3 pizzas.
- Each person gets 7 pieces.
- There are 1 leftover pieces. 
```

``` 
Input - Invalid input type
- People: two
- Pizzas: 3
- Slices per pizza: 5

Expected Output
- Only numeric values are accepted. Please try again.
```

```
Input - Pluralized output
- People: 2
- Pizzas: 3
- Slices per pizza: 5

Expected Output
- 2 people with 3 pizzas.
- Each person gets 7 pieces.
- There are 1 leftover pieces. 
```

```
Input - Singular output
- People: 2
- Pizzas: 3
- Slices per pizza: 5

Expected Output
- 2 people with 3 pizzas.
- Each person gets 7 pieces.
- There are 1 leftover pieces. 
```