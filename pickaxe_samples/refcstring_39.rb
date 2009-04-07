#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        # encoding: utf-8
        ∂og_in_bytes = [226, 136, 130, 111, 103]  # utf-8 byte sequence
        str = ∂og_in_bytes.pack("C*")
        str.encoding
        str.length
        str.force_encoding("utf-8")  #!sh!
        str.encoding
        str.length
        str
