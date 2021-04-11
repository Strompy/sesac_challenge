## Scenario
Princess Peach is trapped in one of the four corners of a square grid. You are in the center of the and can move one step at a time in any of the four directions. Can you rescue the princess?

### Input Format
The first line contains an odd integer `N` (3 <= N <= 100) denoting the size of the grid. This is followed by an NxN grid. Each cell is denoted by `-` (ascii value: 45). The bot position is denoted by `m` and the princess position is denoted by `p`.

Grid is indexed using Matrix Convention.

### Output Format
Print out the moves you will take to rescue the princess in one go. The moves must be separated by `\n`, a newline. The valid moces are `LEFT`, `RIGHT`, `UP`, OR `DOWN`.

### Sample Input

```
3
---
-m-
p--
```

### Sample Output

```
DOWN
LEFT
```

### Task
Complete the function `displayPathtoPrincess` which takes two parameters – the integer `N` and the character array grid. The grid will be formatted exactly as you see it in the input, so for the sample input the princess is at grid[2][0]. The function shall output moves (LEFT, RIGHT, UP, or DOWN) on consecutive lines to rescue/reach the princess. The goal is to reach the princess in as few moves as possible.

The above sample input is just to help you understand the format. The princess `p` can be in any one of the four corners.

### Scoring
Your score is calculated as follows: (NxN - the number of moves made to rescue the princes)/10, where N is the size of the grid (3x3 in the sample).


## Analysis

### Rewrite the question in your own words:
Given a grid of a certain odd size (`N`), find the shortest path to the princess (`p`) from the center (`m`). Inputs given are the grid size, followed by the the grid itself, line by line. Output is a string of all the individual moves to get to the princess printed as `LEFT`, `RIGHT`, `UP`, or `DOWN` separated by newlines.

### What assumptions will you make about this problem if you cannot ask any more clarifying questions? What are your reasons for making those assumptions?
* Moves are to be printed out with a newline between each. Ruby's `puts` method includes a newline at the end, but the format may require all lines to be output as one string. If that is the case, then moves need to be collected as I go and output at the end, instead of putsing them as I go.  
* The scoring aspect is to help determine the shortest path, as opposed to just any successful path.
* Down, left and left, down are equal solutions in the given example. Order doesn't matter if they are the same number of moves.

### What are your initial thoughts about this problem? (high level design, 2-3 sentences)
* Find the coordinates of the princess (always a corner) and myself (center spot will always be half of the size so `[N/2, N/2]`)
* add/sub 1 to one of my coords for each move, until they equal the princess coords
* Store moves in an array as I go, then join and print the array at the end

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
* Set my coordinates m_x_coord, m_y_coord == N/2, N/2
* Set princess coordinates by checking corners (if [0, 0], elsif [0, N-1], etc.)
* until m_x_coord == p_x_coord && m_y_coord == p_y_coord
* if princess on top, move m_x_coord up by one, else move m_x_coord down by one
* if princess on right, move m_y_coord up by one, else move m_y_coord down by one
* print results

### Write out any implementation code OR link to repl

### What is the Big O complexity of your solution?
