ONE_THRU_NINETEEN = {
      # we don't want nil if we lookup zero
      # but we also don't want "zero", so just put empty string
      # remove excess whitespace later
      0 => "",
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
      19 => "nineteen"
    } 

TENS_PREFIXES = {
      2 => "twenty",
      3 => "thirty",
      4 => "fourty",
      5 => "fifty",
      6 => "sixty",
      7 => "seventy",
      8 => "eighty",
      9 => "ninety"
    }

ORDER_NAMES = {
      1 => "thousand",
      2 => "million",
      3 => "billion",
      4 => "trillion"
}
ORDERS = {
      1 => 1000,
      2 => 1000000,
      3 => 1000000000,
      4 => 1000000000000 
}