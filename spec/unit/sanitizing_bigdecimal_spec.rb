require_relative '../spec_helper'

describe SanitizingBigDecimal do
  it "works like normal for normal BigDecimal strings" do
    expect(SanitizingBigDecimal("1")).to eq(BigDecimal("1"))
  end

  it "strips non-numeric characters (allows decimal point)" do
    expect(SanitizingBigDecimal("$1,000.23")).to eq(BigDecimal("1000.23"))
  end

  it "should not blow up with nil" do
    expect{SanitizingBigDecimal(nil)}.to_not raise_error
  end

  it "returns what it's passed, if it is passed a BigDecimal" do
    input = BigDecimal("1000.13")
    expect(SanitizingBigDecimal(input)).to equal(input)
  end
end
