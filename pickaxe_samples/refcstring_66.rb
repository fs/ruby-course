#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        str = "defog"
        # a utf-8 delta character
        str.setbyte(0, 226)
        str.setbyte(1, 136)
        str.setbyte(2, 130)
        str
        str.length
        str.force_encoding("utf-8") #!sh!
        str.length
        str
