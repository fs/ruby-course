#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        # encoding: utf-8
        ascii1 = "ant"
        ascii2 = "bee"
        iso    = "\xee"
        iso.force_encoding(Encoding::ISO_8859_1) #!sh!
        utf    = "∂og"
        
        Encoding.compatible?(ascii1, ascii2)
        Encoding.compatible?(ascii1, iso)
        Encoding.compatible?(ascii1, utf)
        Encoding.compatible?(iso,    utf)
