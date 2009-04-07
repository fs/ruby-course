#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        # encoding: utf-8
        ole_in_utf = "olé"
        ole_in_utf.encoding
        ole_in_utf.dump   # !to_s!

        ole_in_8859 = ole_in_utf.encode("iso-8859-1")
        ole_in_8859.encoding
        ole_in_8859.dump # !to_s!
