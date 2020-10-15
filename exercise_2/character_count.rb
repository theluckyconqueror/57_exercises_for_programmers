class CharacterCounter
  def run(characters)

    characters_length = count(characters)

    if characters_length > 0
      cleaned_characters = remove_spaces(characters)
      puts "#{characters} has #{characters_length} characters."
    else
      puts "Please enter some data."
    end

  end

  def count(characters)
    remove_spaces(characters).length
  end

  private

  def remove_spaces(string)
    string.gsub(/ /, "")
  end
end

if __FILE__ == $PROGRAM_NAME
  counter = CharacterCounter.new
  print "What's the input string? "
  string = gets.chomp
  counter.run(string)
end
