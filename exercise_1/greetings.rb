class Greet
  def initialize(name)
    @name = name
  end

  def run
    greeting = generate_string
    puts greeting
  end

  private

  def generate_string
    "Hello, " + "#{@name}" + ", nice to meet you!"
  end
end

if __FILE__ == $PROGRAM_NAME
  print "What's your name? "
  name = gets.chomp
  greeter = Greet.new name
  greeter.run
end
