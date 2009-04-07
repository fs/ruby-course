#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        s = [ 1, 2, 3 ]
        t = [ 4, 5, 6, [7, 8] ]
        a = [ s, t, 9, 10 ]
        a.flatten(0)
        a.flatten
        a.flatten(1)
        a.flatten(2)
