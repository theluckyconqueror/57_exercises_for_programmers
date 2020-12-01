require 'minitest/autorun'
require_relative './paint_calculator.rb'

class PaintCalculatorTests < Minitest::Test

  def setup
    @calc = PaintCalculator.new
  end

  def test_square_feet_calculator
    length, width = 15, 20
    assert_equal 300, @calc.square_feet(length, width)
  end

  def test_square_feet_calculator_digits
    length, width = 21, 19.5
    assert_equal 409.50, @calc.square_feet(length, width)
  end

  def test_round_up_to_next_whole_number
    length, width = 19, 20
    assert_equal 2, @calc.gallons(length, width)
  end

  def test_ensure_numeric_input_only
    length, width = "ten", 20
    assert_output(/Only numeric values are allowed. Please try again./) { @calc.run(length, width) }
  end

  def test_full_run
    length, width = 19, 20
    output = <<~TESTOUTPUT
    You will need to purchase 2 gallons of
    paint to cover 380 square feet.
    TESTOUTPUT
    assert_output(output) { @calc.run(length, width) }
  end

end
