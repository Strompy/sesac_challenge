#!/bin/ruby
class Bot
  def initialize; end

  def nextMove(n,r,c,grid)
    p_r, p_c = find_princess(grid)
    # require "pry"; binding.pry
    if r < p_r
      r += 1
      "DOWN"
    elsif r > p_r
      r -= 1
      "UP"
    elsif c < p_c
      c += 1
      "RIGHT"
    elsif c > p_c
      c -= 1
      "LEFT"
    end
  end

  def find_princess(grid)
    col = nil
    row = 0
    grid.each_with_index do |r, index|
      row = index
      col = r.index('p')
      break if col != nil
    end
    [row, col]
  end


  def run
    n = gets.to_i

    r,c = gets.strip.split.map {|num| num.to_i}

    grid = Array.new(n)

    (0...n).each do |i|
        grid[i] = gets
    end

    nextMove(n,r,c,grid)
  end
end
