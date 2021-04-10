require 'minitest/autorun'
require 'minitest/pride'
require './lib/display_path'

class DisplayPathTest < Minitest::Test
  def setup
    @display_path = DisplayPath.new
  end

end
