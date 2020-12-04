class CurrencyConverter

  CONVERSION_RATE = 0.82

  def convert(amount:, rate:)
    ((amount * rate) / CONVERSION_RATE).round(2)
  end

  def run(amount:, rate:)
    if validate_input(amount) && validate_input(rate)
      converted_amount = convert(amount: amount, rate: rate)
      output =  "#{amount} euros exchanges for #{converted_amount} U.S. dollars."
      print output
    end
  end

  private

  def validate_input(input)
    if input.to_i == 0
      puts "Only numbers are allowed for exchange rate"
      return false
    else
      return true
    end
  end
end
