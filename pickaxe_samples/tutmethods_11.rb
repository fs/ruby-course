#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  class TaxCalculator
    def initialize(name, &block)
      @name, @block = name, block
    end
    def get_tax(amount)
      "#@name on #{amount} = #{ @block.call(amount) }"
    end
  end

  tc = TaxCalculator.new("Sales tax") {|amt| amt * 0.075 }

  tc.get_tax(100)
  tc.get_tax(250)
