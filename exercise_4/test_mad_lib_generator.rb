require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/hell'
require_relative './mad_lib_generator.rb'
require_relative './input_faker.rb'
require 'pry'

class MadLibGeneratorTests < Minitest::Test
  def setup
    @mlg = MadLibGenerator.new
    capture_stdout = StringIO.new
    $stdout = capture_stdout
  end

  def test_all_input_provided
    assert_output(/Do you jiggle your shiny car furiously/) do
      InputFaker.fake_stdin("car", "jiggle", "shiny", "furiously") {@mlg.run}
    end
  end

  def test_get_noun
    InputFaker.fake_stdin("car") {@mlg.get_noun}
    assert_equal "car", @mlg.noun
  end

  def test_get_verb
    InputFaker.fake_stdin("jiggle") {@mlg.get_verb}
    assert_equal "jiggle", @mlg.verb
  end

  def test_get_adjective
    InputFaker.fake_stdin("shiny") {@mlg.get_adjective}
    assert_equal "shiny", @mlg.adjective
  end

  def test_get_adverb
    InputFaker.fake_stdin("furiously") {@mlg.get_adverb}
    assert_equal "furiously", @mlg.adverb
  end

  def test_no_noun_provided
    InputFaker.fake_stdin("") do
      @mlg.get_noun
      assert_equal "map", @mlg.noun
    end
  end

  def test_no_verb_provided
    InputFaker.fake_stdin("") do
      @mlg.get_verb
      assert_equal "accept", @mlg.verb
    end
  end

  def test_no_adjective_provided
    InputFaker.fake_stdin("") do
      @mlg.get_adjective
      assert_equal "flawless", @mlg.adjective
    end
  end

  def test_no_adverb_provided
    InputFaker.fake_stdin("") do
      @mlg.get_adverb
      assert_equal "upbeat", @mlg.adverb
    end
  end
end
