# Exercise 9 - Paint Calculator

## Example Output

```
$ Ceiling Length(FT): 19
  Ceiling Width(FT): 20
  
  You will need to purchase 2 gallons of
  paint to cover 380 square feet.

```

## Constraints
- Store the conversion rate in a constant.
- Ensure we round up the number of gallons to the next whole number.

## Challenges
* Ensure only numeric values are entered. Fail on anything else.
* Add support for a round room
* Add support for an L-shaped room.
* Create a mobile version of this application.

### Test Plan

NOTE: The test plan does not cover the challenges. 

```
Input
- Length: 19
- Width: 20

Expected Output
You will need to purchase 2 gallons of
paint to cover 380 square feet.
```

```
Input
- Length: 21
- Width: 19.5

Expected Output
You will need to purchase 2 gallons of
paint to cover 409.50 square feet.
```

```
Input
- Length: twenty-one
- Width: 19.5

Expected Output
Only numeric values are accepted. Please try again.
```