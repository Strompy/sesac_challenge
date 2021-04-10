require 'minitest/autorun'
require 'minitest/pride'
require './lib/display_path'

class DisplayPathTest < Minitest::Test
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

    grid2 = ['----p', '--m--', '-----']
    assert_equal [0, 4], @display_path.find_princess(5, grid2)
  end

  # def test_it_can_display_path_to_princess
  #   assert_equal "DOWN\nLEFT", @display_path.displayPathtoPrincess
  # end
end
