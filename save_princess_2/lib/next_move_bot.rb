#!/bin/ruby
class NextMoveBot
  attr_reader :bot_row, :bot_col, :princess_row, :princess_col

  def initialize(n,r,c,grid)
    @bot_row, @bot_col = r, c
    @princess_row, @princess_col = find_princess(grid)
  end

  def solve_next_move
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
  bot = NextMoveBot.new(n, r, c, grid)
  puts bot.solve_next_move
end
