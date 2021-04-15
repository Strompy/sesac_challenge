#!/bin/ruby
class Bot
  attr_reader :grid, :bot_row, :bot_col, :princess_row, :princess_col

  def initialize(n, grid)
    @grid = grid
    @bot_row, @bot_col = [n/2, n/2]
    @princess_row, @princess_col = find_princess(n, grid)
  end

  def solve_grid
    moves = []
    until [bot_col, bot_row] == [princess_col, princess_row]
      if princess_row == 0
        @bot_row -= 1
        moves.push 'UP'
      else
        @bot_row += 1
        moves.push 'DOWN'
      end
      if princess_col == 0
        @bot_col -= 1
        moves.push 'LEFT'
      else
        @bot_col += 1
        moves.push 'RIGHT'
      end
    end
    moves.join('\n')
  end

  def solve_next_move(n, bot_row, bot_col, grid)
    princess_row, princess_col = find_princess(grid)

    if bot_row < princess_row
      "DOWN"
    elsif bot_row > princess_row
      "UP"
    elsif bot_col < princess_col
      "RIGHT"
    elsif bot_col > princess_col
      "LEFT"
    end
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
  bot = Bot.new(n,grid)
  print bot.solve_grid
end
