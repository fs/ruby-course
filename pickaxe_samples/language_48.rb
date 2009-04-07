#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  class MyClass
    def MyClass.method      # definition
    end
  end

  MyClass.method            # call
  
  obj = Object.new
  def obj.method            # definition
  end

  obj.method                # call

  def (1.class).fred        # receiver may be an expression
  end

  Fixnum.fred               # call
