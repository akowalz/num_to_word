module NumToWord

  load "number_names.rb"

  def translate(n)
    # Because 100 being printed "one hundred zero" is Bad.
    if n == 0
      "zero"
    else
      Translator.new.translate_num(n).strip.squeeze(" ")
    end
  end

  class Translator
    def translate_num(n)
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

    private

    def find_phrase_for(n)
      order = Math.log(n,1000).to_i
      divisor = 10**((order)*3)
      unless ORDER_NAMES[order]
        "Number was too large.  Fork me and add it!"
      else 
        make_phrase(n,divisor,ORDER_NAMES[order])
      end
    end

    def make_phrase(n,order,word)
      translate_num(n/order) + " #{word} " + translate_num(n % order)
    end
  end

end