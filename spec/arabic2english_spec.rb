require_relative '../arabic2english'

RSpec.describe Arabic2English, '#convert' do
  context "with numbers between 0 and 20" do
    it "outputs the number in words when number is 0" do
      number = Arabic2English.new
      result = number.convert(0)
      expect(result).to eq("zero")
    end
    it "outputs the number in words when number is 10" do
      number = Arabic2English.new
      result = number.convert(10)
      expect(result).to eq("ten")
    end
    it "outputs the number in words when number is 19" do
      number = Arabic2English.new
      result = number.convert(19)
      expect(result).to eq("nineteen")
    end
  end
end
