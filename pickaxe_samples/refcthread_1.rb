#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        Thread.abort_on_exception = true
        t1 = Thread.new do
          puts  "In new thread"
          raise "Exception from thread"
        end
        sleep(1)
        puts "not reached"
