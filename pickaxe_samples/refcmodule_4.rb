#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
       Fred = Module.new do
         def meth1
           "hello"
         end
         def meth2
           "bye"
         end
       end
       a = "my string"
       a.extend(Fred)
       a.meth1
       a.meth2
