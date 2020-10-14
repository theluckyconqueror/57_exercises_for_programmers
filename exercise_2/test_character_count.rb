require 'minitest/autorun'
require_relative './character_count.rb'

class CharacterCounterTests < Minitest::Test

  parallelize_me!
  make_my_diffs_pretty!

  def setup
    @counter = CharacterCounter.new
  end

  def test_only_letters
    characters = "LC"
    assert_equal 2, @counter.run(characters)
  end

  def test_letters_and_spaces
    skip
    characters = "LC Was Here"
  end

  def test_no_input
    skip
    characters = nil
  end

  def test_empty_string
    skip
    characters = ""
  end

  def test_letters_and_numbers
    skip
    characters = "LC 2020"
  end

  def test_letters_symbols
    skip
    characters = "LC!"
  end

  def test_leters_numbers_and_symbols
    skip
    characters = "LC 2020!"
  end

  def test_letters_and_emoji
    skip
    characters = "LC ✅"
  end
end
