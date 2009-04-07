#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        # encoding: utf-8
        str = "∂og"
        str.bytes.to_a
        str.getbyte(0)
        str.getbyte(1)
        str.getbyte(-1)
        str.getbyte(99)
