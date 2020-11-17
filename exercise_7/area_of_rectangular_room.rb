require 'bigdecimal'

class RectangularAreaCalculator

  CONVERSION_FACTOR = "0.09290304"

  def square_feet(length, width)
    length * width
  end

  def square_meters(length, width)
    (BigDecimal(square_feet(length, width)) * BigDecimal(CONVERSION_FACTOR)).round(3)
  end

  def run(length, width)
    if validate_input(length) and validate_input(width)
      sq_ft = square_feet(length, width)
      sq_mt = square_meters(length, width).to_s("F")

      puts "You entered dimensions of #{length} feet by #{width} feet.
The area is
#{sq_ft} square feet
#{sq_mt} square meters"
    else
      return false
    end
  end

  private

  def validate_input(input)
    if input.to_i == 0
      puts "Digits only. Try again."
      return false
    else
      true
    end
  end

end

if __FILE__ == $PROGRAM_NAME
  calc = RectangularAreaCalculator.new
  print "What is the length of the room in feet? "
  length = gets.chomp.to_i
  print "What is the width of the room in feet? "
  width = gets.chomp.to_i
  calc.run(length, width)
end
