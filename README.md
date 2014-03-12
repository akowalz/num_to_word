## Number to Word Translator

A number to word translator in ruby for numbers less than one million. Implemented with a somewhat cool recursive algorithm.  Doesn't have some filler words like "and" and reads `1500` as `one thousand five hundred` not `fifteen hundred`, but overall it seems to work very well.  

Tests are included in `num_to_word_tc.rb`. *Let me know if you find a failing test case! I'm interested in how I can make this algorithm better!!*

Use like so: `translated_string = NumToWord.new(2592).translate`