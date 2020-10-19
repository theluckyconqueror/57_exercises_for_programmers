# Exercise 4 - Mad Lib

## Example Output

```
$ Enter a noun: car
  Enter a verb: jiggle
  Enter an adjective: shiny
  Enter an adverb: furiously
  
  Do you jiggle your shiny car furiously? That's hilarious! 

```

## Constraints
- Use 1 output statement.
- Use string interpolation. 

## Challenges
* Add more inputs to make the story longer
* Implement a branching story that changes depending on the information entered.

### Test Plan

NOTE: The test plan does not cover the challenges. 

```
Input
- noun: car
- verb: jiggle
- adjective: shiny
- adverb: furiously

Expected Output
- Do you jiggle your shiny car furiously? That's hilarious!
```

```
Input
- noun: ""
- verb: jiggle
- adjective: shiny
- adverb: furiously

Expected Output
- Do you jiggle your shiny <random noun> furiously? That's hilarious!
```

```
Input
- noun: car
- verb: ""
- adjective: shiny
- adverb: furiously

Expected Output
- Do you <random verb> your shiny car furiously? That's hilarious!
```

```
Input
- noun: car
- verb: jiggle
- adjective: ""
- adverb: furiously

Expected Output
- Do you jiggle your <random adjective> car furiously? That's hilarious!
```

```
Input
- noun: car
- verb: jiggle
- adjective: shiny
- adverb: ""

Expected Output
- Do you jiggle your <random adjective> car <random adverb>? That's hilarious!
```