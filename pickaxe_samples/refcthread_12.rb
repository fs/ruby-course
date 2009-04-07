#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        a = Thread.new { print "a"; sleep(10); print "b"; print "c" }
        x = Thread.new { print "x"; Thread.pass; print "y"; print "z" }
        x.join # Let x thread finish, a will be killed on exit.
      puts
