require 'minitest/autorun'
require_relative './greetings.rb'

class TestGreet < Minitest::Test
  def setup
    @name = "LC"
    @greeter = Greet.new @name
  end

  def test_run
    assert_output(/Hello, LC, nice to meet you!/) { @greeter.run }
  end
end
