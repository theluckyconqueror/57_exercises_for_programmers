require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/hell'
require_relative './currency_conversion.rb'

class CurrencyConverterTests < Minitest::Test

  def setup
    @converter = CurrencyConverter.new
  end

  def test_round_fraction_to_next_penny
    exchange_rate = 1
    initial_amount = 100.08
    assert_equal 122.05, @converter.convert(amount: initial_amount, rate: exchange_rate)
  end

  def test_only_two_digits_of_precision
    exchange_rate = 1
    initial_amount = 81
    assert_equal 98.78, @converter.convert(amount: initial_amount, rate: exchange_rate)
  end

  def test_full_run
    exchange_rate = 1
    initial_amount = 81
    output = "81 euros exchanges for 98.78 U.S. dollars."
    assert_output(output) {@converter.run(rate: exchange_rate, amount: initial_amount)}
  end

  def test_validate_input
    exchange_rate = "one point three"
    initial_amount = 81
    assert_output(/Only numbers are allowed for exchange rate/) { @converter.run(amount: initial_amount, rate: exchange_rate) }
  end
end
