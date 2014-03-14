## Number to Word Translator

A number to word translator in ruby for arbitrary large numbers, implemented with a cool recursive algorith m. Right now there's support for decillions, but that's just because I had to stop writing the names at some point.  One could easily add support for numbers of any size by adding more prefixes to the `ORDER_NAMES` hash in `number_names.rb`. 

Tests are included in `num_to_word_tc.rb`. There are 24 right now, I tried to think of as many weird cases as I could. I've also been trying to come up with a good way to do random testing, but I can't come up with a good invariant. If you have any ideas I'm all ears.

#### Usage:
``` 
$ require './num_to_word.rb'
  => true
$ NumToWord.translate(289473)
  => "two hundred eighty-nine thousand four hundred seventy-three"
```
