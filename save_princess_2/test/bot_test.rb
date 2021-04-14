require 'minitest/autorun'
require 'minitest/pride'
require './lib/next_move_bot'

class DisplayPathTest < Minitest::Test
  def setup
    @bot = NextMoveBot.new
  end

  def test_it_exists
    assert_instance_of NextMoveBot, @bot
  end

  def test_it_can_find_princess
    grid = ['-----', '-----', 'p--m-', '-----', '-----']
    assert_equal [2, 0], @bot.find_princess(grid)

    grid2 = ['----p', '-----', '--m--', '-----', '-----']
    assert_equal [0, 4], @bot.find_princess(grid2)
  end

  def test_it_can_solve
    n, r, c = 5, 2, 3
    grid = ['-----', '-----', 'p--m-', '-----', '-----']
    assert_equal "LEFT", @bot.solve(n, r, c, grid)

    grid2 = ['---p', '----', '--m-', '----']
    n, r, c = 4, 2, 2
    assert_equal "UP", @bot.solve(n, r, c, grid2)

    grid3 = ['-----', '-----', '----p', '-m---', '-----']
    n, r, c = 5, 3, 1
    assert_equal "UP", @bot.solve(n, r, c, grid3)
  end
end
