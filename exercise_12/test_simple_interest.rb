require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/hell'
require_relative './simple_interest.rb'

class SimpleInterestCalculatorTests < Minitest::Test

  def setup
    @calc = SimpleInterestCalculator.new
  end

  def test_invalid_input
    principal, rate, years = 1500, 4.3, "four"
    assert_output(/Only numeric values are accepted. Please try again/) { @calc.run }
  end

  def test_round_up_to_next_penny
    principal, rate, years = 1500, 4.678, 4
    assert_equal 1780.68, @calc.calculate(principal, rate, years)
  end

  def test_one_year_interest
    principal, rate, years = 1500, 4.3, 1
    assert_equal 1564.5, @calc.calculate(principal, rate, years)
  end

  def test_money_formatting
    principal, rate, years = 1500, 4.3, 4
    @calc.calculate(principal, rate, years)
    assert_equal "$1758.00", @calc.format
  end

  def test_full_run
    principal, rate, years = 1500, 4.3, 4
    @calc.calculate(principal, rate, years)
    output = "After 4 years at 4.3%, the investment will be worth $1758.00."
    assert_output(output) { @calc.run }
  end

end
