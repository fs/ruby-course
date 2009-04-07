#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
         class Klass
            attr_accessor :str
         end
         s1 = Klass.new
         s1.str = "Hello"
         s2 = s1.clone
         s2.str[1,4] = "i"
         s1.inspect
         s2.inspect
