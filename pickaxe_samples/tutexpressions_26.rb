#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  class Bowdlerize
    def initialize(string)
      @value = string.gsub(/[aeiou]/, '*')
    end
    def +(other)
      Bowdlerize.new(self.to_s + other.to_s)
    end
    def to_s
      @value
    end
    def inspect
      @value
    end
  end

  a = Bowdlerize.new("damn ")
  a += "shame"
