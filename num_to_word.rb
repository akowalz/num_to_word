class NumToWord

  def initialize(n)
    @n = n
  end

  # The API
  def translate
    # zero is a special case we don't want zero to come out of recursion
    # 100 being translated as "one hundred zero" is bad!
    if @n == 0
      "zero"
    else
      # get rid of extra whitespace with strip and squeeze
      translate_num(@n).strip.squeeze(" ")
    end
  end

  # dictionaries to hold words

  ONE_THRU_NINETEEN =
    {
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
      6 => "sixy",
      7 => "seventy",
      8 => "eighty",
      9 => "ninety"
    }

  private  

    def translate_num(n)
      if n < 20
        ONE_THRU_NINETEEN[n]
      elsif n < 100
        prefix = TENS_PREFIXES[n/10]
        # only add hyphen when there is a ones digit
        n % 10 == 0 ? prefix : prefix + "-" + translate_num(n % 10)
      elsif n < 1000
        translate_num(n/100) + " hundred " + translate_num(n % 100)
      else
        translate_num(n/1000) + " thousand " + translate_num(n % 1000)
      end
    end

end