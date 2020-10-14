class CharacterCounter
  def run(characters)
    if characters.length > 0
      cleaned_characters = remove_spaces(characters)
      cleaned_characters.length
    else
      puts "Please enter some data"
    end
  end

  private

  def remove_spaces(string)
    string.gsub(/ /, "")
  end
end
