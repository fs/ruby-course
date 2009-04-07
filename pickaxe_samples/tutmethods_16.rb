#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  class S
    def some_method(a,b,c)
    end
  end
  obj = S.new
  arg2 = 1
  arg3 = 2
  a = obj.hash    # Same as
  a = obj.hash()  # this.

  obj.some_method "Arg1", arg2, arg3   # Same thing as
  obj.some_method("Arg1", arg2, arg3)  # with parentheses.
