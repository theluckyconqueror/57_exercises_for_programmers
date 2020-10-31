require 'minitest/autorun'
require_relative './retirement_calculator.rb'

class RetirementCalculatorTests < Minitest::Test

  def setup
    @retirement_calc = RetirementCalculator.new
  end

  def test_get_current_year
    assert_equal 2020, @retirement_calc.year
  end

  def test_cannot_retire_yet
    current_age, retirement_age = 23, 65
    output = <<~TESTOUTPUT
    You have 42 years left until you can retire.
    It's 2020, so you can retire in 2062.
    TESTOUTPUT
    assert_output(output) {@retirement_calc.run(current_age, retirement_age)}
  end

  def test_can_retire_this_year
    current_age, retirement_age = 65, 65
    assert_output(/Congrats, you can retire this year./) {@retirement_calc.run(current_age, retirement_age)}
  end

  def test_can_retire_already
    current_age, retirement_age = 79, 65
    assert_output(/Congrats, you can retire now./) {@retirement_calc.run(current_age, retirement_age)}
  end

end
