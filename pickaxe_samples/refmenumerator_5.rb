#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
         (1..10).detect  {|i| i % 5 == 0 and i % 7 == 0 }
         (1..100).detect {|i| i % 5 == 0 and i % 7 == 0 }
         sorry = lambda { "not found" }
         (1..10).detect(sorry) {|i| i > 50}
