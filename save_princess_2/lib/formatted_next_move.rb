# Copy and paste the following code hackerrank submission box.

#!/bin/ruby
class Bot
  def initialize; end

  def solve(n,r,c,grid)
    p_r, p_c = find_princess(grid)

    if r < p_r
      "DOWN"
    elsif r > p_r
      "UP"
    elsif c < p_c
      "RIGHT"
    elsif c > p_c
      "LEFT"
    end
  end

  def find_princess(grid)
    col, row = nil, nil
    grid.each_with_index do |r, index|
      row = index
      col = r.index('p')
      break if col != nil
    end
    [row, col]
  end
end

# HackerRank function
def nextMove(n,r,c,grid)
  bot = Bot.new
  puts bot.solve(n, r, c, grid)
end


# hackerrank runtime code
n = gets.to_i

r,c = gets.strip.split.map {|num| num.to_i}

grid = Array.new(n)

(0...n).each do |i|
    grid[i] = gets
end

nextMove(n,r,c,grid)
