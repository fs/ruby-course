#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  class ExampleDate
    def initialize(day_number)
      @day_number = day_number
    end
    
    def as_day_number
      @day_number
    end
    
    def as_string
      unless @string
        # complex calculation
        @string = result
      end
      @string
    end
    
    def as_YMD
      unless @ymd
        # another calculation
        @ymd = [ y, m, d ]
      end
      @ymd
    end
    # ...
  end
