class PizzaPartyCalculator
  def initialize(people:, pizzas:, slices:)
    @people = people
    @pizzas = pizzas
    @slices = slices
  end

  def leftovers
    total_slices % @people
  end

  def total_slices
    @pizzas * @slices
  end

  def per_person_slices
    total_slices / @people
  end

  def pluralize_leftovers
    if leftovers == 1
      "There is #{leftovers} leftover piece."
    else
      "There are #{leftovers} leftover pieces."
    end
  end

  def run
    if validate_input(@people) && validate_input(@pizzas) && validate_input(@slices)
      output = <<~RUN_OUTPUT
      #{@people} people with #{@pizzas} pizzas.
      Each person gets #{per_person_slices} pieces of pizza.
      #{pluralize_leftovers}
      RUN_OUTPUT
      puts output
    else
      return false
    end
  end

  def validate_input(input)
    if input.to_i == 0
      puts "Only numeric values are accepted. Please try again."
      return false
    else
      return true
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  print "How many people? "
  people = gets.chomp.to_i
  print "How many pizzas do you have? "
  pizzas = gets.chomp.to_i
  print "How many slices per pizza? "
  slices = gets.chomp.to_i
  calc = PizzaPartyCalculator.new(people: people, pizzas: pizzas, slices: slices)
  calc.run
end
