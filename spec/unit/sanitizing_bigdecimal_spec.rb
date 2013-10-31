require_relative '../spec_helper'

describe SanitizingBigDecimal do
  it "works like normal for normal BigDecimal strings" do
    expect(SanitizingBigDecimal("1")).to eq(BigDecimal("1"))
  end

  it "strips non-numeric characters (allows decimal point)" do
    expect(SanitizingBigDecimal("$1,000.23")).to eq(BigDecimal("1000.23"))
  end
end
