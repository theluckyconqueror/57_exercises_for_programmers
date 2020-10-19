require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/hell'
require_relative './input_faker.rb'

require_relative './quote_printer.rb'

class QuotePrinterTests < Minitest::Test

  def setup
    @printer = QuotePrinter.new
    capture_stdout = StringIO.new
    $stdout = capture_stdout
  end

  def test_get_quote
    InputFaker.fake_stdin("Die with memories, not dreams.") do
      @printer.get_quote
      assert_equal "Die with memories, not dreams.", @printer.quote
    end
  end

  def test_get_author
    InputFaker.fake_stdin("Kendrick Lamar") do
      @printer.get_author
      assert_equal "Kendrick Lamar", @printer.author
    end
  end

  def test_quote_output
    InputFaker.fake_stdin("Yesterday you said tomorrow. Just do it.", "Nike") do
      @printer.get_quote
      @printer.get_author
      assert_output(/Nike says, Yesterday you said tomorrow. Just do it/) { @printer.run }
    end
  end

end
