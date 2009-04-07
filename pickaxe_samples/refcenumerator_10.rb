#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        f = File.open("testfile")
        enum1 = f.to_enum(:each_byte)
        enum2 = f.to_enum
        enum1.next
        enum1.next
        enum2.next
        f.gets
        enum2.next
