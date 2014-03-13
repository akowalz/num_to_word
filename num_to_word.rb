class NumToWord

  # holds 1-19 and prefixes for multiples of 10
  load "number_names.rb"

  # The API
  def self.translate(n)
    # zero is a special case. We don't want zero to come out of recursion
    # 100 being translated as "one hundred zero" is bad!
    if n == 0
      "zero"
    else
      # get rid of extra whitespace with strip and squeeze
      translate_num(n).strip.squeeze(" ")
    end
  end

  private  

    def self.translate_num(n)
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