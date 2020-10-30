require 'minitest/autorun'
require_relative './simple_math.rb'

class SimpleMathTests < Minitest::Test

  def setup
    @calc = SimpleMath.new
  end

  def test_addition
    assert_equal 10, @calc.addition(5, 5)
  end

  def test_subtraction
    assert_equal 8, @calc.subtraction(12, 4)
  end

  def test_multiplication
    assert_equal 50, @calc.multiplication(5, 10)
  end

  def test_division
    assert_equal 100, @calc.division(1000, 10)
  end

  def test_run
    output = <<~TESTOUTPUT
      2 + 2 = 4
      2 - 2 = 0
      2 * 2 = 4
      2 / 2 = 1
    TESTOUTPUT
    assert_output(output) { @calc.run(2, 2) }
  end

end
