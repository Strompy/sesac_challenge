#!/bin/ruby
class Bot
  def initialize; end

  def nextMove(n,r,c,grid)
    p_r, p_c = find_princess(grid)
    puts "0 0"
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

  # def displayPathtoPrincess(n,grid)
  #   m_y_coord, m_x_coord = find_center(n)
  #   p_y_coord, p_x_coord = find_princess(n, grid)
  #   moves = []
  #   until m_x_coord == p_x_coord && m_y_coord == p_y_coord
  #     if p_y_coord == 0
  #       m_y_coord -= 1
  #       moves.push 'UP'
  #     else
  #       m_y_coord += 1
  #       moves.push 'DOWN'
  #     end
  #     if p_x_coord == 0
  #       m_x_coord -= 1
  #       moves.push 'LEFT'
  #     else
  #       m_x_coord += 1
  #       moves.push 'RIGHT'
  #     end
  #   end
  #   p moves.join('\n')
  # end


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
