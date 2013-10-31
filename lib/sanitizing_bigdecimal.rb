require 'bigdecimal'

class SanitizingBigDecimal
  VERSION = "0.0.1"

  def self.get_bigdecimal(input)
    BigDecimal(sanitize(input))
  end

  def self.sanitize(input)
    input.gsub(/[^.0-9]/, '')
  end
end

def SanitizingBigDecimal(input)
  SanitizingBigDecimal.get_bigdecimal(input)
end
