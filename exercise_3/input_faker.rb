module InputFaker
  def self.fake_stdin(*input, &block)
    fake_input = StringIO.new
    input.flatten.each { |str| fake_input.puts(str) }
    fake_input.rewind

    original_stdin, $stdin = $stdin, fake_input
    yield
  ensure
    $stdin = original_stdin
  end
end
