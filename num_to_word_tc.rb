require './num_to_word'
require 'test/unit'
include NumToWord

class NumToWordTest < Test::Unit::TestCase

  def test_zero
    assert_equal "zero", NumToWord.translate(0)
  end

  def test_five
    assert_equal  "five", NumToWord.translate(5)
  end

  def test_twenty_five
    assert_equal  "twenty-five", NumToWord.translate(25)
  end

  def test_352
    assert_equal "three hundred fifty-two", NumToWord.translate(352)
  end

  def test_101
    assert_equal "one hundred one", NumToWord.translate(101)
  end

  def test_419
    assert_equal "four hundred nineteen",  NumToWord.translate(419)
  end

  def test_999
    assert_equal "nine hundred ninety-nine", NumToWord.translate(999)
  end

  def test_1500
    assert_equal "one thousand five hundred", NumToWord.translate(1500)
  end

  def test_6415
    assert_equal "six thousand four hundred fifteen",
                 NumToWord.translate(6415)
  end

  def test_43111
    assert_equal "fourty-three thousand one hundred eleven",
                 NumToWord.translate(43111)
  end

  def test_73001
    assert_equal "seventy-three thousand one",
                 NumToWord.translate(73001)
  end

  def test_123456
    assert_equal "one hundred twenty-three thousand four hundred fifty-six",
                 NumToWord.translate(123456)
  end

  def test_999999
    assert_equal "nine hundred ninety-nine thousand nine hundred ninety-nine",
                 NumToWord.translate(999999)
  end

  def test_200000
    assert_equal "two hundred thousand", NumToWord.translate(200000)
  end

  def test_100001
    assert_equal "one hundred thousand one", NumToWord.translate(100001)
  end

  def test_410045
    assert_equal "four hundred ten thousand fourty-five",
                 NumToWord.translate(410045)
  end

  def test_20000
    assert_equal "twenty thousand", NumToWord.translate(20000)
  end

  def test_30
    assert_equal "thirty", NumToWord.translate(30)
  end

  def test_one_million
    assert_equal "one million", NumToWord.translate(1000000)
  end

  def test_over_on_million
    assert_equal "fifty-four million five hundred seventy-two thousand six hundred one",
                 NumToWord.translate(54572601)
  end

  def test_999999999
    nine_st = "nine hundred ninety-nine"
    assert_equal "#{nine_st} million #{nine_st} thousand #{nine_st}",
                 NumToWord.translate(999999999)
  end
  def test_876045302
    assert_equal "eight hundred seventy-six million fourty-five thousand three hundred two",
                 NumToWord.translate(876045302)
  end
  def test_1234567890
    assert_equal "one billion two hundred thirty-four million " + 
                 "five hundred sixty-seven thousand eight hundred ninety",
                 NumToWord.translate(1234567890)
  end
  def test_quadrillion
    assert_equal "one quadrillion", NumToWord.translate(1000000000000000)
  end
end