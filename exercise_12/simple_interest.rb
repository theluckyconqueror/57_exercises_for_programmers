class SimpleInterestCalculator

  def initialize
    @total = 0
    @rate = 0
    @years = 0
  end

  def calculate(principal, rate, years)
    @rate = rate
    @years = years
    @principal = principal
    @total = (@principal * (1 + (@rate/100) * @years)).round(2)
    @total
  end

  def format
    "$%0.2f" % [@total]
  end

  def run
    output = "After #{@years} years at #{@rate}%, the investment will be worth #{format}."
    if validate_input(@principal) && validate_input(@rate) && validate_input(@years)
      print output
    end
  end

  private

  def validate_input(input)
    if input.to_i == 0
      puts "Only numeric values are accepted. Please try again."
      return false
    else
      return true
    end
  end

end
