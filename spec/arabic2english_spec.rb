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

  context "with numbers less than 100" do
    it "outputs the number in words when number is 21" do
      number = Arabic2English.new
      result = number.convert(21)
      expect(result).to eq("twenty-one")
    end
    it "outputs the number in words when number is 40" do
      number = Arabic2English.new
      result = number.convert(40)
      expect(result).to eq("fourty")
    end
    it "outputs the number in words when number is 78" do
      number = Arabic2English.new
      result = number.convert(78)
      expect(result).to eq("seventy-eight")
    end
  end
end
