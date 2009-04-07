#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
         "%05d" % 123
         "%-5s: %08x" % [ "ID", self.object_id ]
         "%-5<name>s: %08<value>x" % { name: "ID", value: self.object_id }
