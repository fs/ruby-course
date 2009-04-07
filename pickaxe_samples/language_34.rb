#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  class Holder
    @@var = 99
    def Holder.var=(val)
      @@var = val
    end
    def var
      @@var
    end
  end

  @@var = "top level variable"

  a = Holder.new
  Holder.var = 123
  a.var
