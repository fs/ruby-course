#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  class Account
    attr_reader :cleared_balance  # accessor method 'cleared_balance'

    protected :cleared_balance    # and make it protected

    def greater_balance_than(other)
      return @cleared_balance > other.cleared_balance
    end
  end
