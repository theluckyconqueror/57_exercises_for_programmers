require 'minitest/autorun'
require 'minitest/pride'
require_relative './pizza_party'

class PizzaPartyCalculatorTests < Minitest::Test

  def test_no_leftover_slices
    calc = PizzaPartyCalculator.new(people: 8, pizzas: 2, slices: 8)
    assert_equal 0, calc.leftovers
  end

  def test_one_or_more_leftover_slices
    calc = PizzaPartyCalculator.new(people: 2, pizzas: 3, slices: 5)
    assert_equal 1, calc.leftovers
  end

  def test_invalid_input_type
    calc = PizzaPartyCalculator.new(people: "eight", pizzas: 2, slices: 5)
    assert_output(/Only numeric values are accepted. Please try again./) {calc.run}
  end

  def test_pluralized_output
    calc = PizzaPartyCalculator.new(people: 6, pizzas: 2, slices: 8)
    output = <<~TESTOUTPUT
    6 people with 2 pizzas.
    Each person gets 2 pieces of pizza.
    There are 4 leftover pieces.
    TESTOUTPUT
    assert_output(output) {calc.run}
  end

  def test_singular_output
    calc = PizzaPartyCalculator.new(people: 7, pizzas: 3, slices: 5)
    output = <<~TESTOUTPUT
    7 people with 3 pizzas.
    Each person gets 2 pieces of pizza.
    There is 1 leftover piece.
    TESTOUTPUT
    assert_output(output) {calc.run}
  end
end
