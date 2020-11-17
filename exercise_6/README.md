# Exercise 6 - Retirement Calculator

## Example Output

```
$ What is your current age? 22
At what age would you like to retire? 65
You have 43 years left until you can retire.
It's 2020, so you can retire in 2063.

```

## Constraints
- Convert input to integers before performing math.
- Use Ruby's Date/Time libraries to get the time.

## Challenges
* Handle scenarios where the user can already retire.

### Test Plan

NOTE: The test plan does not cover the challenges. 

```
Input
- Current Age: 22
- Retirement Age: 65

Expected Output
You have 43 years left until you can retire.
It's 2020, so you can retire in 2063.
```

```
Input
- Current Age: 32
- Retirement Age: 35

Expected Output
You have 3 years left until you can retire.
It's 2020, so you can retire in 2023.
```

```
Input
- Current Age: 68
- Retirement Age: 65

Expected Output
Congrats, you can retire now.
```

```
Input
- Current Age: 65
- Retirement Age: 65

Expected Output
Congrats, you can retire this year. 
```