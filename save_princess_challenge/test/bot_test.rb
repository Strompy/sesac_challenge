require 'minitest/autorun'
require 'minitest/pride'
require './lib/bot'

class BotTest < Minitest::Test
  def setup
    @grid = ['---', '-m-', 'p--']
    @n = @grid.size
    @bot = Bot.new(@n, @grid)
  end

  def test_it_exists
    assert_instance_of Bot, @bot
  end

  def test_it_has_attributes
    assert_equal @grid, @bot.grid
    assert_equal @n/2, @bot.bot_row
    assert_equal @n/2, @bot.bot_col
    assert_equal 2, @bot.princess_row
    assert_equal 0, @bot.princess_col
  end

  def test_it_can_find_princess
    grid = ['---', '-m-', 'p--']
    assert_equal [2, 0], @bot.find_princess(3, grid)

    grid2 = ['----p', '-----', '--m--', '-----', '-----']
    assert_equal [0, 4], @bot.find_princess(5, grid2)
  end

  def test_it_can_solve_next_move
    bot = Bot.new(@n, @grid)
    assert_equal "DOWN", bot.solve_next_move
    assert_equal "LEFT", bot.solve_next_move
  end

  def test_it_can_find_path_to_princess
    # grid = ['---', '-m-', 'p--']
    assert_equal "DOWN\\nLEFT", @bot.solve_grid
    # grid2 = ['----p', '-----', '--m--', '-----', '-----']
    # assert_equal  "UP\\nRIGHT\\nUP\\nRIGHT", @bot.solve_grid(grid2.size, grid2)
  end
end
