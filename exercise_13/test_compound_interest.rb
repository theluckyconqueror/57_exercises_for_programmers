require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/hell'
require_relative './compound_interest.rb'

class CompoundInterestCalculatorTests < Minitest::Test

  def setup
    @calc = CompoundInterestCalculator.new
    @principal, @rate, @years, @compounds_per_year = 1500, 4.3, 6, 4
  end

  def test_full_run
    output = <<~OUTPUT
    $1500 invested at 4.3% for 6 years compounded 4 times per year is $1938.84
    OUTPUT
    @calc.calculate(@principal, @rate, @years, @compounds_per_year)
    assert_output(output) {@calc.run}
  end

  def test_valid_input
    output = "Only numeric data allowed. Please try again."
    @years = "six"
    assert_output(output) { @calc.run }
  end

  def test_money_formatting
    total = @calc.calculate(@principal, @rate, @years, @compounds_per_year)
    assert_equal "$1938.84", @calc.format(total)
  end

  def test_round_to_next_penny
    total = @calc.calculate(@principal, @rate, @years, @compounds_per_year)
    assert_equal "$1938.84", @calc.format(total)
  end

end
