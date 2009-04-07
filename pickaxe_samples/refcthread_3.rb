#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        count = 0
        a = Thread.new { loop { count += 1 } }
        sleep(0.1)
        Thread.kill(a)
        count
        # give it time to die...
        sleep 0.01   #!sh!
        a.alive?
