#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
    require 'profile'
    def ackerman(m, n)
      if m == 0 then  n+1
      elsif n == 0 and m > 0 then ackerman(m-1, 1)
      else ackerman(m-1, ackerman(m, n-1))
      end
    end
    ackerman(3, 3)
