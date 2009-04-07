#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
       class MyClass
         def self.another_new(*args)
           o = allocate
           o.send(:initialize, *args)
           o
         end
         def initialize(a, b, c)
           @a, @b, @c = a, b, c
         end
       end

       mc = MyClass.another_new(4, 5, 6)
       mc.inspect
