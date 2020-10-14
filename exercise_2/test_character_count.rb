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
    characters = "LC Was Here"
    assert_equal 9, @counter.run(characters)
  end

  def test_empty_string
    skip
    characters = ""
    assert_output(/Please enter some data/) { @counter.run(characters) }
  end

  def test_letters_and_numbers
    skip
    characters = "LC 2020"
    assert_equal 6, @counter.run(characters)
  end

  def test_letters_symbols
    skip
    characters = "LC!"
    assert_equal 3, @counter.run(characters)
  end

  def test_leters_numbers_and_symbols
    skip
    characters = "LC 2020!"
    assert_equal 7, @counter.run(characters)
  end

  def test_letters_and_emoji
    skip
    characters = "LC ✅"
    assert_equal 3, @counter.run(characters)
  end
end
