class CharacterCounter
  def run(characters)
    cleaned_characters = remove_spaces(characters)
    cleaned_characters.length
  end

  private

  def remove_spaces(string)
    string.gsub(/ /, "")
  end
end
