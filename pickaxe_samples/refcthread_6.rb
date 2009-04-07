#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        x = Thread.new { sleep 0.1; print "x"; print "y"; print "z" }
        a = Thread.new { print "a"; print "b"; sleep 0.2; print "c" }
        x.join; a.join # wait for threads to finish
        print "\n"
