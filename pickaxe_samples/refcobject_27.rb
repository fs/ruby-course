#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        by_bytes = "cat".to_enum(:each_byte)
        by_bytes.next
        by_bytes.next
        by_chars = "cat".to_enum(:each_char)
        by_chars.next
        by_chars.next
