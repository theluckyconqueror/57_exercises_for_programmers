require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/hell'
require_relative './self_checkout.rb'

class SelfCheckoutTests < Minitest::Test

  def setup
    @items =
      [ {price: 25, quantity: 2},
        {price: 10, quantity: 1},
        {price: 4, quantity: 1}
      ]
  end

  def test_total
    checkout = SelfCheckout.new
    @items.each do |item|
      price = item[:price]
      quantity = item[:quantity]
      checkout.add_item(price: price, quantity: quantity)
    end
    assert_equal 67.52, checkout.total
  end

  def test_tax
    checkout = SelfCheckout.new
    @items.each do |item|
      price = item[:price]
      quantity = item[:quantity]
      checkout.add_item(price: price, quantity: quantity)
    end
    assert_equal 3.52, checkout.tax
  end

  def test_add_item
    checkout = SelfCheckout.new
    item = @items[0]
    price = item[:price]
    quantity = item[:quantity]

    checkout.add_item(price: price, quantity: quantity)

    assert_equal 1, checkout.items.size
  end

  def test_subtotal
    checkout = SelfCheckout.new
    @items.each do |item|
      price = item[:price]
      quantity = item[:quantity]
      checkout.add_item(price: price, quantity: quantity)
    end
    assert_equal 64.00, checkout.subtotal
  end

  def test_full_run
    checkout = SelfCheckout.new
    @items.each do |item|
      price = item[:price]
      quantity = item[:quantity]
      checkout.add_item(price: price, quantity: quantity)
    end
    output = <<~TESTOUTPUT
    Subtotal: $64.00
    Tax: $3.52
    Total: $67.52
    TESTOUTPUT

    assert_output(output) { checkout.run }
  end

end
