RSpec.describe TimeValueMoney do
  it "has a version number" do
    expect(TimeValueMoney::VERSION).not_to be nil
  end

  describe '.future_value' do
    it "returns the correct answer to the future value" do
      expect(TimeValueMoney.future_value(1,1,1)).to eq(1.01)
    end

    it "returns 0 when the inputs are 0" do
    expect(TimeValueMoney.future_value(0,0,0)).to eq(0)
    end
  end

  describe ".present_value" do
    it "returns 0 when the inputs are 0" do
    expect(TimeValueMoney.present_value(0,0,0)).to eq(0)
  end

  it "returns the corrent answer to the present value" do
  expect(TimeValueMoney.present_value(7,20,200000)).to eq(51683.80)
  end
end

end