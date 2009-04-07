#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
    def gen_times(factor)
      return Proc.new {|n| n*factor }
    end

    times3 = gen_times(3)
    times5 = gen_times(5)

    times3.call(12)
    times5.call(5)
    times3.call(times5.call(4))
