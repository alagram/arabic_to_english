class Arabic2English

  def initialize
    @number = 0
  end

  NUMBER_MAP = {
    0 => "zero",
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
    20 => "twenty",
    30 => "thirty",
    40 => "fourty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety",
    100 => "hundred",
    1000 => "thousand",
    1000000 => "million",
    1000000000 => "billion",
    1000000000000 => "trillon"
  }

  HYPHEN = "-"
  CONJUNCTION = " and"
  SEPARATOR = ","

  def convert(num=ARGV.first)
    @number = num.to_i

    case true
    when @number < 21
      result = Arabic2English::NUMBER_MAP[@number]
    when @number < 100
      tens = (@number / 10) * 10
      units = @number % 10
      result = Arabic2English::NUMBER_MAP[tens]
      if units > 0
        result += "#{Arabic2English::HYPHEN}#{Arabic2English::NUMBER_MAP[units]}"
      end
    when @number < 1000
      hundreds = @number / 100
      remainder = @number % 100
      result = "#{Arabic2English::NUMBER_MAP[hundreds]} #{Arabic2English::NUMBER_MAP[100]}"

      if remainder > 0
        result += "#{CONJUNCTION} #{convert(remainder)}"
      end
    else
      base = 1000 ** (Math.log(@number, 1000).floor)
      base_unit = @number / base
      remainder = @number % base
      result = "#{convert(base_unit)} #{Arabic2English::NUMBER_MAP[base]}"

      if remainder > 0
        result += remainder < 100 ? "#{CONJUNCTION}" : "#{SEPARATOR}"
        result += " #{convert(remainder)}"
      end
    end

    result

  end
end

say = Arabic2English.new
p say.convert
