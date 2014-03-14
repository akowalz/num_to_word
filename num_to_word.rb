class NumToWord

  load "number_names.rb"

  def self.translate(n)
    # Because 100 being printed "one hundred zero" is Bad.
    if n == 0
      "zero"
    else
      translate_num(n).strip.squeeze(" ")
    end
  end

  private  

    def self.translate_num(n)
      if n < 20
        ONE_THRU_NINETEEN[n]
      elsif n < 100
        prefix = TENS_PREFIXES[n/10]
        n % 10 == 0 ? prefix : prefix + "-" + translate_num(n % 10)
      elsif n < 1000
        make_phrase(n,100,"hundred")
      else
        find_phrase_for(n)
      end
    end

    def self.find_phrase_for(n)
      order = Math.log(n,1000).to_i
      divisor = 10**((order)*3)
      unless ORDER_NAMES[order]
        "You entered a number that was too big! I'm not even mad, that's amazing"
      else 
        make_phrase(n,divisor,ORDER_NAMES[order])
      end
    end

    def self.make_phrase(n,order,word)
      translate_num(n/order) + " #{word} " + translate_num(n % order)
    end

end