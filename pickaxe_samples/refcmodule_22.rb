#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
         module A
           def method1()
           end
         end

         class B
           def method2()
           end
         end

         class C < B
           def method3()
           end
         end

         A.instance_methods
         B.instance_methods(false)
         C.instance_methods(false)
         C.instance_methods(true).length
