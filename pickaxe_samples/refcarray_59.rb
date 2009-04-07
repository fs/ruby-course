#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
         a = [ "a", "b", "c", "d", "e" ]
         a.slice(2) + a.slice(0) + a.slice(1)
         a.slice(6)
         a.slice(1, 2)
         a.slice(1..3)
         a.slice(4..7)
         a.slice(6..10)
         a.slice(-3, 3)
         # special cases
         a.slice(5)
         a.slice(5, 1)
         a.slice(5..10)
