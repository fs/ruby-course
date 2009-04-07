#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  class Demo
    def initialize(n)
      @secret = n
    end
    def get_binding
      return binding()
    end
  end

  k1 = Demo.new(99)
  b1 = k1.get_binding
  k2 = Demo.new(-3)
  b2 = k2.get_binding

  # Pass to eval...
  eval("@secret", b1)
  # Or eval via binding...
  b2.eval("@secret")

  eval("@secret")
