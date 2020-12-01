# Exercise 7 - Area of a Rectangular Room

## Example Output

```
$ What is the length of the room in feet? 15
What is the width of the room in feet? 20
You entered dimensions of 15 feet by 20 feet.
The area is
300 square feet
27.871 square meters

```

## Constraints
- Separate calculations and output
- Store the conversion factor in a constant

## Challenges
* Ensure that inputs are numbers otherwise terminate the program.
* Create a version that allows you to specify feet or meters for input.
* Implement a GUI that automatically updates the values when any value changes. 

### Test Plan

NOTE: The test plan does not cover the challenges. 

```
Input
- Length: 15
- Width: 20

Expected Output
- Square Feet: (L x W) 300.000
- Square Meters: (Sq Ft x 0.09290304) 27.871 
```

```
Input
- Length: ten
- Width: 20

Expected Output
- Digits only. Try again. 
```

```
Input
- Length: 15.57
- Width: 20.98

Expected Output
- Square Feet: (L x W) 326.658
- Square Meters: (Sq Ft x 0.09290304) 30.347
```

```
Input
- Length: 15.00000
- Width: 20

Expected Output
- Square Feet: (L x W) 300.000
- Square Meters: (Sq Ft x 0.09290304) 27.871 
```
