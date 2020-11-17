require 'minitest/autorun'
require_relative './area_of_rectangular_room'

class RectangularAreaCalculatorTests < Minitest::Test

  def setup
    @calc = RectangularAreaCalculator.new
  end

  def test_square_feet_calculator
    length, width = 15, 20
    assert_equal 300, @calc.square_feet(length, width)
  end

  def test_square_meters_calculator
    length, width = 15, 20
    assert_equal 27.871, @calc.square_meters(length, width)
  end

  def test_only_allow_digits
    length, width = "fifteen", 20
    assert_output(/Digits only. Try again./) {@calc.run(length, width)}
  end

  def test_full_run
    length, width = 15, 20
    output = <<~TESTOUTPUT
    You entered dimensions of 15 feet by 20 feet.
    The area is
    300 square feet
    27.871 square meters
    TESTOUTPUT
    assert_output(output) {@calc.run(length, width)}
  end

end
