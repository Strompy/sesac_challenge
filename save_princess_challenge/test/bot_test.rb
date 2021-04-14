require 'minitest/autorun'
require 'minitest/pride'
require './lib/bot'

class BotTest < Minitest::Test
  def setup
    @display_path = DisplayPath.new
  end

  def test_it_can_find_center
    assert_equal [1, 1], @display_path.find_center(2)
    assert_equal [2, 2], @display_path.find_center(5)
  end

  def test_it_can_find_princess
    grid = ['---', '-m-', 'p--']
    assert_equal [2, 0], @display_path.find_princess(3, grid)

    grid2 = ['----p', '-----', '--m--', '-----', '-----']
    assert_equal [0, 4], @display_path.find_princess(5, grid2)
  end

  def test_it_can_find_path_to_princess
    grid = ['---', '-m-', 'p--']
    assert_equal "DOWN\\nLEFT", @display_path.displayPathtoPrincess(grid.size, grid)
    grid2 = ['----p', '-----', '--m--', '-----', '-----']
    assert_equal  "UP\\nRIGHT\\nUP\\nRIGHT", @display_path.displayPathtoPrincess(grid2.size, grid2)
  end
end
