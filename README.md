## Number to Word Translator

A number to word translator in ruby for arbitrary large numbers. Right now there's support for decillions, but that's just because I had to stop writing the names at some point.  Easily extendable by adding more things to the ORDER_NAMES hash in `number_names.rb`. Implemented with a cool recursive algorithm. 

Tests are included in `num_to_word_tc.rb`. There are 24 right now, I tried to think of as many weird cases as I could. I've been trying to come up with a good way to do random testing. If you have any ideas I'm all ears; I can't come up with a good invariant.

#### Usage:
``` 
$ require './num_to_word.rb'
  => true
$ translated_string = NumToWord.translate(289473)
  => "two hundred eighty-nine thousand four hundred seventy-three"
```
