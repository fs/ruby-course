#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        # encoding: binary
        str = "\xE2"
        str.force_encoding("utf-8") #!sh!
        str.valid_encoding?
        str = "\xE2\x88\x82"
        str.force_encoding("utf-8") #!sh!
        str.valid_encoding?
