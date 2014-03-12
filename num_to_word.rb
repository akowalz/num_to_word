class NumToWord

  def initialize(n)
    @n = n
  end

  def translate
    if @n == 0
        "zero"
    else
        # get rid of extra whitespace with strip and squeeze
        # kind of inelegant but works very well
        translate_num(@n).strip.squeeze(" ")
    end
  end

  # constants

  ONE_THRU_NINETEEN =
    {
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
      8 => "eigty",
      9 => "ninety"
    }

  private  

    def translate_num(n)
      if n < 100
        less_than_one_hundred(n) 
      elsif n < 1000
        less_than_one_thousand(n)
      elsif n < 100000
        less_than_hundred_thousand(n)  
      else
        less_than_million(n)
      end
    end

    def less_than_twenty(n)
      ONE_THRU_NINETEEN[n]
    end

    def less_than_one_hundred(n)
      if n >= 20
        TENS_PREFIXES[n/10] + "-" + translate_num(n%10)
      else
        less_than_twenty n
      end
    end

    def less_than_one_thousand(n)
      translate_num(n/100) + " hundred " + translate_num(n % 100)
    end 

    def less_than_hundred_thousand(n)
      translate_num(n/1000) + " thousand " + translate_num(n%1000)
    end

    def less_than_million(n)
      translate_num(n/1000) + " thousand " + translate_num(n%1000)
    end
end





