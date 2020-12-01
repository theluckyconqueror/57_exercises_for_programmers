class PaintCalculator

  GALLON = 350.0

 def gallons(length, width)
   sq_ft = square_feet(length, width)
   (sq_ft / GALLON).ceil
 end

 def square_feet(length, width)
   length * width
 end

 def run(length, width)
   if validate_input(length) && validate_input(width)
     sq_ft = square_feet(length, width)
     gallons = gallons(length, width)
     output = <<~OUTPUT
     You will need to purchase #{gallons} gallons of
     paint to cover #{sq_ft} square feet.
     OUTPUT
     puts output
   else
     puts "Only numeric values are allowed. Please try again."
   end
 end

 private

 def validate_input(input)
   if input.to_i == 0
     return false
   else
      return true
   end
 end

end

if __FILE__ == $PROGRAM_NAME
  calc = PaintCalculator.new
  print "Ceiling Length(FT): "
  length = gets.chomp.to_i
  print "Ceiling Width(FT): "
  width = gets.chomp.to_i
  calc.run(length, width)
end
