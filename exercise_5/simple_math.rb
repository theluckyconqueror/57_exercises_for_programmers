class SimpleMath
  
  def addition(num1, num2)
    num1 + num2
  end

  def subtraction(num1, num2)
    num1 - num2
  end

  def multiplication(num1, num2)
    num1 * num2
  end

  def division(num1, num2)
    num1 / num2
  end

  def run(num1, num2)
    output = <<~RUN_OUTPUT
    #{num1} + #{num2} = #{addition(num1, num2)}
    #{num1} - #{num2} = #{subtraction(num1, num2)}
    #{num1} * #{num2} = #{multiplication(num1, num2)}
    #{num1} / #{num2} = #{division(num1, num2)}
    RUN_OUTPUT
    print output
  end

end


if __FILE__ == $PROGRAM_NAME
  calc = SimpleMath.new
  print "What is the first number? "
  num1 = gets.chomp
  print "What is the second number? "
  num2 = gets.chomp
  num1, num2 = num1.to_i, num2.to_i
  calc.run(num1, num2)
end
