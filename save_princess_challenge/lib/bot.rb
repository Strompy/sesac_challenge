#!/bin/ruby
class Bot
  def initialize; end # add attributes of each position?

  def solve_grid(n,grid)
    bot_row, bot_col = find_center(n)
    princess_row, princess_col = find_princess(n, grid)
    moves = []
    until bot_col == princess_col && bot_row == princess_row
      if princess_row == 0
        bot_row -= 1
        moves.push 'UP'
      else
        bot_row += 1
        moves.push 'DOWN'
      end
      if princess_col == 0
        bot_col -= 1
        moves.push 'LEFT'
      else
        bot_col += 1
        moves.push 'RIGHT'
      end
    end
    p moves.join('\n')
  end

  def find_center(n)
    [n/2, n/2]
  end

  def find_princess(n, grid)
    if grid[0][0] == 'p'
      [0, 0]
    elsif grid[0][n-1] == 'p'
      [0, n-1]
    elsif grid[n-1][0] == 'p'
      [n-1, 0]
    else
      [n-1, n-1]
    end
  end
end

# HackerRank function
def displayPathtoPrincess(n,grid)
  bot = Bot.new
  print bot.solve_grid(n,grid)
end
