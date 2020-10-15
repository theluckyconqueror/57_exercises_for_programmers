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
    assert_equal 2, @counter.count(characters)
  end

  def test_only_letters_output
    characters = "LC"
    assert_output(/LC has 2 characters./) { @counter.run(characters) }
  end

  def test_letters_and_spaces
    characters = "LC Was Here"
    assert_equal 9, @counter.count(characters)
  end

  def test_letters_and_spaces_output
    characters = "LC Was Here"
    assert_output(/LC Was Here has 9 characters./) { @counter.run(characters) }
  end

  def test_empty_string
    characters = ""
    assert_output(/Please enter some data./) { @counter.run(characters) }
  end

  def test_letters_and_numbers
    characters = "LC 2020"
    assert_equal 6, @counter.count(characters)
  end

  def test_letters_and_numbers_output
    characters = "LC 2020"
    assert_output(/LC 2020 has 6 characters./) { @counter.run(characters) }
  end

  def test_letters_symbols
    characters = "LC!"
    assert_equal 3, @counter.count(characters)
  end

  def test_letters_symbols_output
    characters = "LC!"
    assert_output(/LC! has 3 characters./) { @counter.run(characters) }
  end

  def test_letters_numbers_and_symbols
    characters = "LC 2020!"
    assert_equal 7, @counter.count(characters)
  end

  def test_letters_numbers_and_symbols_output
    characters = "LC 2020!"
    assert_output(/LC 2020! has 7 characters./) { @counter.run(characters) }
  end

  def test_letters_and_emoji
    characters = "LC ✅"
    assert_equal 3, @counter.count(characters)
  end

  def test_letters_and_emoji_output
    characters = "LC ✅"
    assert_output(/LC ✅ has 3 characters/) { @counter.run(characters) }
  end

end
