#!/bin/ruby
class DisplayPath
  def initialize; end

  def displayPathtoPrincess(n,grid)
    m_y_coord, m_x_coord = find_center(n)
    p_y_coord, p_x_coord = find_princess(n, grid)
    moves = []
    until m_x_coord == p_x_coord && m_y_coord == p_y_coord
      if p_y_coord == 0
        m_y_coord -= 1
        moves.push 'UP'
      else
        m_y_coord += 1
        moves.push 'DOWN'
      end
      if p_x_coord == 0
        m_x_coord -= 1
        moves.push 'LEFT'
      else
        m_x_coord += 1
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

  def run
    m = gets.to_i

    grid = Array.new(m)

    (0...m).each do |i|
        grid[i] = gets.strip
    end
    displayPathtoPrincess(m,grid)
  end
end
