#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        array = [ 1, 2, 3, 4 ]
        e1 = array.to_enum
        e2 = array.to_enum
        e1.next
        e1.next
        e2.next
        e1.rewind  #!sh!
        e1.next
        e2.next
