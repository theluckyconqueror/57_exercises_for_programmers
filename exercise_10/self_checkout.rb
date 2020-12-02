class SelfCheckout

  attr_reader :items

  TAX_RATE = 0.055

  def initialize
    @items = []
  end

  def add_item(price:, quantity:)
    @items << {price: price, quantity: quantity}
  end

  def subtotal
    subtotal = 0.00
    @items.each { |item| subtotal += total_item_price(item) }
    subtotal
  end

  def tax
    subtotal * TAX_RATE
  end

  def total
    subtotal + tax
  end

  def run
    output = <<~RUNOUTPUT
    Subtotal: $%0.2f
    Tax: $#{tax}
    Total: $#{total}
    RUNOUTPUT
    puts output % [subtotal]
  end

  private

  def total_item_price(item)
    item[:price] * item[:quantity]
  end
end

if __FILE__ == $PROGRAM_NAME
  checkout = SelfCheckout.new

  print "Enter the price of item 1: "
  item_1_price = gets.chomp.to_f
  print "Enter quantity of item 1: "
  item_1_quantity = gets.chomp.to_f
  checkout.add_item(price: item_1_price, quantity: item_1_quantity)

  print "Enter the price of item 2: "
  item_2_price = gets.chomp.to_f
  print "Enter quantity of item 2: "
  item_2_quantity = gets.chomp.to_f
  checkout.add_item(price: item_2_price, quantity: item_2_quantity)

  print "Enter the price of item 3: "
  item_3_price = gets.chomp.to_f
  print "Enter quantity of item 3: "
  item_3_quantity = gets.chomp.to_f
  checkout.add_item(price: item_3_price, quantity: item_3_quantity)

  checkout.run

end
