# Exercise 12 - Computing Simple Interest

## Example Output

```
Enter the principal: 1500
Enter the rate of interest: 4.3
Enter the number of years: 4

After 4 years at 4.3%, the investment will be worth $1758.
```
## Formula

`A = P(1 + rt)`

P: Principal amount
r: Annual rate of interest
t: Number of years the amount is invested
A: Amount at the end of the investment

## Constraints
- Prompt for rate as a percentage (i.e. not .15).
- Ensure fractions are rounded up to the next penny.
- Ensure output is formatted as money.

## Challenges
* Ensure numeric input for principal, rate and number of years.
* Change program to use a function called `calculateSimpleInterest` that takes the rate, principal, and number of years as arguments and returns the amount at the end of the investment period.
* Print out the total amount each year along with the total amount at the end of the investment.

### Test Plan

NOTE: The test plan does not cover the challenges. 

```
Input
- Principal: 1500
- Rate of interest: 4.3
- Number of years: 4

Expected Output
- $1758
```

```
Input
- Principal: 1500
- Rate of interest: 4.3
- Number of years: four

Expected Output
- Only numeric values are accepted. Please try again.
```

```
Input
- Principal: 1500
- Rate of interest: 4.678
- Number of years: 4

Expected Output
- $1768.07
```