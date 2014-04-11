require 'bigdecimal'

class SanitizingBigDecimal
  VERSION = "0.0.3"

  def self.get_bigdecimal(input)
    return input if input.is_a?(BigDecimal)
    BigDecimal(sanitize(input))
  end

  def self.sanitize(input)
    return nil.to_s if input.nil?
    input.gsub(/[^.0-9]/, '')
  end
end

def SanitizingBigDecimal(input)
  SanitizingBigDecimal.get_bigdecimal(input)
end
