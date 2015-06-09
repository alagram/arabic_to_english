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
    100 => "hundred"
  }

  HYPHEN = "-"

  def convert(num)
    @number += num.to_i

    case true
    when @number < 100
      tens = (@number / 10) * 10
      units = @number % 10
      result = Arabic2English::NUMBER_MAP[tens]
      if units > 0
        result << "#{Arabic2English::HYPHEN}#{Arabic2English::NUMBER_MAP[units]}"
      end
    end

    result

  end
end
