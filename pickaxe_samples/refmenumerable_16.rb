#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        (1..100).grep 38..44
        c = IO.constants
        c.grep(/SEEK/)
        res = c.grep(/SEEK/) {|v| IO.const_get(v) } 
        res
        [ 123, 9**11, 12.34 ].grep(Integer)
