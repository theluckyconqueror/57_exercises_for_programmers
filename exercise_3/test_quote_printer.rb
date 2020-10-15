require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/hell'

require_relative './quote_printer.rb'

class QuotePrinterTests < Minitest::Test

  def setup
    @printer = QuotePrinter.new
  end

  def test_get_quote
    fake_input = StringIO.new
    fake_input.puts "Die with memories, not dreams."
    fake_input.rewind
    $stdin = fake_input
    @printer.get_quote
    $stdin = STDIN
    assert_equal "Die with memories, not dreams.", @printer.quote
  end

  def test_get_author
    fake_input = StringIO.new
    fake_input.puts "Kendrick Lamar"
    fake_input.rewind
    $stdin = fake_input
    @printer.get_author
    $stdin = STDIN
    assert_equal "Kendrick Lamar", @printer.author
  end

  def test_quote_output
    fake_input = StringIO.new
    fake_input.puts "Yesterday you said tomorrow. Just do it."
    fake_input.puts "Nike"
    fake_input.rewind
    $stdin = fake_input
    @printer.get_quote
    @printer.get_author
    $stdin = STDIN
    assert_output(/Nike says, Yesterday you said tomorrow. Just do it/) { @printer.run }
  end

end
