#!/bin/ruby
class DisplayPath
  def initialize; end

  def displayPathtoPrincess(n,grid)
    require "pry"; binding.pry
    m_x_coord, m_y_coord = find_center(n)

    return ""
  end

  def find_center(n)
    [n/2, n/2]
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



# DisplayPath.new.run
