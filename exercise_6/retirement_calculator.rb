require 'date'

class RetirementCalculator

  def run(current_age, retirement_age)
    if retirement_age < current_age
      puts "Congrats, you can retire now."
    elsif retirement_age == current_age
      puts "Congrats, you can retire this year."
    end

    years_remaining = years_remaining(current_age, retirement_age)

    puts "You have #{years_remaining} years left until you can retire."
    puts "It's #{year}, so you can retire in #{year + years_remaining}."

  end


  def year
    DateTime.now.year
  end

  def years_remaining(current_age, retirement_age)
    retirement_age - current_age
  end

end

if __FILE__ == $PROGRAM_NAME
  calc = RetirementCalculator.new
  print "What is your current age?"
  current_age = gets.chomp
  print "At what age would you like to retire?"
  retirement_age = gets.chomp
  current_age, retirement_age = current_age.to_i, retirement_age.to_i
  calc.run(current_age, retirement_age)
end
