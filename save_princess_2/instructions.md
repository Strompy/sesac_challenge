## Scenario
In this version of "Bot Saves Princess", Princess Peach and the bot's position are randomly set. Can you save the princess?

### Task
Complete the function `nextMove` which takes in 4 parameters: an integer `N`, integers `r` and `c` indicating row & column position of the bot, and the character grid array. The function outputs: the next move the bot makes to rescue the princess.

### Input Format
The first line of the input is `N` (<100), the size of the board(NxN). The second line of the input contains two space separated integers, which is the position of the bot.

Grid is indexed using Matrix Convention.

The position of the princess is indicated by the character `p` and the position of the bot is indicated by the character `m` and each cell is denoted by `-` (ascii value 45).

### Output Format
Out put the next move you take to rescue the princess. Valid moves are `LEFT`, `RIGHT`, `UP`, or `DOWN`.

### Sample Input
```
5
2 3
-----
-----
p--m-
-----
-----
```

### Sample O
```
LEFT
```

### Resultant State
```
-----
-----
p-m--
-----
-----
```

### Explanation
As you can see, the bot is one step closer to the princess.

### Scoring
Your score for every testcase would be (NxN minus number of moves made to rescue the princess)/10 where N is the size of the grid (5x5 in the sample). Maximum score is 17.5


## Analysis

### Rewrite the question in your own words:
Given a grid of a certain size (`N`) with randomly placed princess and bot, find the next/first move in the shortest path to the princess (`p`) from the bot (`m`). Inputs given are the grid size, the bot starting point, followed by the the grid itself, line by line. Output is a string of the next moves to get to the princess printed as `LEFT`, `RIGHT`, `UP`, or `DOWN`.

### What assumptions will you make about this problem if you cannot ask any more clarifying questions? What are your reasons for making those assumptions?
* Just need to print out one move.
* Given the bot position, so search the grid for the `p` and store those coords.
* Can't use previous search method since that just checks corners, instead have to iterate through grid breaking once princess is found.
* Once found princess can reuse previous movement method, but just end it after the first move.
* The scoring aspect is to help determine the shortest path, as opposed to just any successful path.
* Order probably doesn't matter as long as one of the coordinates is closer to the final goal. I will start with the y coordinate for ease.

### What are your initial thoughts about this problem? (high level design, 2-3 sentences)
* Find princess location by iterating through the grid and checking each string (row) for char `p`
* add/sub 1 to one of my coords for first move towards the princess
* Return that move as a string of the direction

### How would you identify the elements of this problem?

- [ ] Searching of Data
- [ ] Sorting of Data
- [ ] Pattern Recognition
- [X] Build/Navigate a Grid
- [ ] Math
- [ ] Language API knowledge
- [ ] Optimization


### Which data structure(s) do you think you'll use? What pros/cons do you see with that choice?


### Write out a few lines of initial pseudocode: (mid-level design, NOT REAL CODE)
* Transformations reference: `{'LEFT': [0, -1], 'DOWN': [-1, 0], 'RIGHT': [0, 1], 'UP': [1, 0]}`
* Iterate through grid searching for `p`, set princess coords based on that
* 1 time go through the if logic for moving the bot towards the priness.
* Return the direction moved by the bot

### Write out any implementation code OR link to repl

### What is the Big O complexity of your solution?
