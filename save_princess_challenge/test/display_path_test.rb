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

end
