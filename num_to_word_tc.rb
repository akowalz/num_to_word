require './num_to_word'
require 'test/unit'

class NumToWordTest < Test::Unit::TestCase

  def test_zero
    assert_equal "zero", NumToWord.new(0).translate
  end
  def test_five
    assert_equal  "five", NumToWord.new(5).translate
  end

  def test_twenty_five
    assert_equal  "twenty-five", NumToWord.new(25).translate
  end

  def test_three_fifty_two
    assert_equal "three hundred fifty-two", NumToWord.new(352).translate
  end

  def test_101
    assert_equal "one hundred one", NumToWord.new(101).translate 
  end

  def test_419
    assert_equal "four hundred nineteen",  NumToWord.new(419).translate
  end

  def test_999
    assert_equal "nine hundred ninety-nine", NumToWord.new(999).translate
  end

  def test_one_thousand_five_hundred
    assert_equal "one thousand five hundred", NumToWord.new(1500).translate
  end

  def test_6415
    assert_equal "six thousand four hundred fifteen", NumToWord.new(6415).translate
  end

  def test_43111
    assert_equal "fourty-three thousand one hundred eleven",
                 NumToWord.new(43111).translate
  end

  def test_73001
    assert_equal "seventy-three thousand one",
                 NumToWord.new(73001).translate
  end

  def test_123456
    assert_equal "one hundred twenty-three thousand four hundred fifty-six",
                 NumToWord.new(123456).translate
  end

  def test_999999
    assert_equal "nine hundred ninety-nine thousand nine hundred ninety-nine",
                 NumToWord.new(999999).translate
  end

  def test_200000
    assert_equal "two hundred thousand", NumToWord.new(200000).translate
  end

  def test_100001
    assert_equal "one hundred thousand one", NumToWord.new(100001).translate
  end

  def test_410045
    assert_equal "four hundred ten thousand fourty-five",
                 NumToWord.new(410045).translate
  end
end