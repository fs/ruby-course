#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  class Fixnum
    alias old_plus +   # We can reference the original '+' as 'old_plus'
    
    def +(other)       # Redefine addition of Fixnums. This is a BAD IDEA!
      old_plus(other).succ
    end
  end

  1 + 2
  a = 3
  a += 4
  a + a + a
