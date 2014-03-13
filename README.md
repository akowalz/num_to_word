## Number to Word Translator

A number to word translator in ruby for numbers less than one million. Implemented with a cool recursive algorithm.  Doesn't have some filler words like "and" and reads `1500` as `one thousand five hundred` not `fifteen hundred`, but overall it works very well.  

Tests are included in `num_to_word_tc.rb`. There are 18 right now, I tried to think of as many weird cases as I could.

Let me know if you find a case that doesn't produce the right output! I'm interested in how I can make this algorithm better!

** Usage: ** `translated_string = NumToWord.translate(189283)`