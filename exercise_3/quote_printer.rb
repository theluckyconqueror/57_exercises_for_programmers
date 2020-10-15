class QuotePrinter
  attr_reader :quote, :author

  def initialize(quote = nil, author = nil)
    @quote = quote
    @author = author
  end

  def run
    puts @author + " says, " + @quote
  end

  def get_quote(qte = nil)
    print "What is the quote? "
    @quote = gets.chomp.to_s
  end

  def get_author(athr = nil)
    print "Who said it? "
    @author = gets.chomp.to_s
  end
end

if __FILE__ == $PROGRAM_NAME
  printer = QuotePrinter.new
  printer.get_quote
  printer.get_author
  printer.run
end
