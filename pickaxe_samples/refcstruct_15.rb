#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
         Lots = Struct.new(:a, :b, :c, :d, :e, :f)
         l = Lots.new(11, 22, 33, 44, 55, 66)
         l.values_at(1, 3, 5)
         l.values_at(0, 2, 4)
         l.values_at(-1, -3, -5)
