require 'minitest/autorun'
require 'minitest/pride'
require './lib/next_move_bot'

class DisplayPathTest < Minitest::Test
  def setup
    grid = ['-----', '-----', 'p--m-', '-----', '-----']
    @n, @r, @c = 5, 2, 3
    @bot = NextMoveBot.new(@n,@r,@c,grid)
  end

  def test_it_exists
    assert_instance_of NextMoveBot, @bot
  end

  def test_it_has_attributes
    assert_equal @r, @bot.bot_row
    assert_equal @c, @bot.bot_col
    assert_equal 2, @bot.princess_row
    assert_equal 0, @bot.princess_col
  end

  def test_it_can_find_princess
    grid = ['-----', '-----', 'p--m-', '-----', '-----']
    assert_equal [2, 0], @bot.find_princess(grid)

    grid2 = ['----p', '-----', '--m--', '-----', '-----']
    assert_equal [0, 4], @bot.find_princess(grid2)
  end

  def test_it_can_solve_next_move
    n, r, c = 5, 2, 3
    grid = ['-----', '-----', 'p--m-', '-----', '-----']
    bot1 = NextMoveBot.new(n, r, c, grid)
    assert_equal "LEFT", bot1.solve_next_move

    grid2 = ['---p', '----', '--m-', '----']
    n, r, c = 4, 2, 2
    bot2 = NextMoveBot.new(n, r, c, grid2)
    assert_equal "UP", bot2.solve_next_move

    grid3 = ['-----', '-----', '-----', '-m---', '-p---']
    n, r, c = 5, 3, 1
    bot3 = NextMoveBot.new(n, r, c, grid3)
    assert_equal "DOWN", bot3.solve_next_move

    grid4 = ['-----', '-----', '-----', '-mp--', '-----']
    n, r, c = 5, 3, 1
    bot4 = NextMoveBot.new(n, r, c, grid4)
    assert_equal "RIGHT", bot4.solve_next_move
  end
end
