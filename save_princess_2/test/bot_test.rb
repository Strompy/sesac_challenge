require 'minitest/autorun'
require 'minitest/pride'
require './lib/bot'

class DisplayPathTest < Minitest::Test
  def setup
    @bot = Bot.new
  end

  def test_it_exists
    assert_instance_of Bot, @bot
  end

  def test_it_can_find_princess
    grid = ['-----', '-----', 'p--m-', '-----', '-----']
    assert_equal [2, 0], @bot.find_princess(grid)

    grid2 = ['----p', '-----', '--m--', '-----', '-----']
    assert_equal [0, 4], @bot.find_princess(grid2)
  end

  # def test_it_can_find_path_to_princess
  #   skip
  #   grid = ['---', '-m-', 'p--']
  #   assert_equal "DOWN\\nLEFT", @display_path.displayPathtoPrincess(grid.size, grid)
  #   grid2 = ['----p', '-----', '--m--', '-----', '-----']
  #   assert_equal  "UP\\nRIGHT\\nUP\\nRIGHT", @display_path.displayPathtoPrincess(grid2.size, grid2)
  # end
end
