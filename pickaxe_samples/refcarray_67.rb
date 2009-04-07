#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
         a = %w{ a b c d e f }
         a.values_at(1, 3, 5)
         a.values_at(1, 3, 5, 7)
         a.values_at(-1, -3, -5, -7)
         a.values_at(1..3, 2...5)
