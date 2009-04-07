#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        a = [ "a", "b", "c" ]
        n = [ 65, 66, 67 ]
        a.pack("A3A3A3")
        a.pack("a3a3a3")
        n.pack("ccc")
