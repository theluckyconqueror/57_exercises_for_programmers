class MadLibGenerator
  attr_reader :noun, :verb, :adjective, :adverb
  def initialize
    @noun, @verb, @adjective, @adverb = ""
    @random_noun = "map"
    @random_verb = "accept"
    @random_adjective = "flawless"
    @random_adverb = "upbeat"
  end

  def run
    get_noun
    get_verb
    get_adjective
    get_adverb
    puts "Do you #{@verb} your #{@adjective} #{@noun} #{@adverb}? That's hilarious!"
  end

  def get_noun
    print "Enter a noun: "
    @noun = gets.chomp.to_s
    @noun = @random_noun if @noun.empty?
  end

  def get_verb
    print "Enter a verb: "
    @verb = gets.chomp.to_s
    @verb = @random_verb if @verb.empty?
  end

  def get_adjective
    print "Enter an adjective: "
    @adjective = gets.chomp.to_s
    @adjective = @random_adjective if @adjective.empty?
  end

  def get_adverb
    print "Enter an adverb: "
    @adverb = gets.chomp.to_s
    @adverb = @random_adverb if @adverb.empty?
  end
end

if __FILE__ == $PROGRAM_NAME
  generator = MadLibGenerator.new
  generator.run
end
