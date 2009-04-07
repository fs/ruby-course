#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        count_high = count_low = 0
        Thread.new do
          Thread.current.priority = 1
          loop { count_high += 1 }
        end
        Thread.new do
          Thread.current.priority = -1
          loop { count_low += 1 }
        end

        sleep 1 #!sh!
        count_high
        count_low
