class CompoundInterestCalculator
  def initialize
    @total = 0
  end

  def calculate(principal, interest_rate, years, compounds_per_year)
    @principal = principal
    @interest_rate = interest_rate
    @years = years
    @compounds_per_year = compounds_per_year
    interest_rate = interest_rate / 100
    @total = principal * (1 + interest_rate / compounds_per_year)**(compounds_per_year * years)
    @total
  end

  def format(amount)
    "$%0.2f" % [amount]
  end

  def run
    if validate_input(@principal) && validate_input(@interest_rate) && validate_input(@years) && validate_input(@compounds_per_year)
      output = <<~OUTPUT
      $#{@principal} invested at #{@interest_rate}% for #{@years} years compounded #{@compounds_per_year} times per year is #{format(@total)}
      OUTPUT
      puts output
    end
  end

  private

  def validate_input(input)
    if input.to_i == 0
      print "Only numeric data allowed. Please try again."
      return false
    else
      return true
    end
  end
end
