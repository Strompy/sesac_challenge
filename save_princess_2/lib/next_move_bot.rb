#!/bin/ruby
class NextMoveBot
  def initialize; end

  def solve(n, bot_row, bot_col, grid)
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
  bot = NextMoveBot.new
  puts bot.solve(n, r, c, grid)
end
