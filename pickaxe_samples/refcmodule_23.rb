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
#           def method1()  end
         end
         class B
           def method2()
           end
#           def method2()  end
         end
         class C < B
           include A
           def method3()
           end
#           def method3()  end
         end

         A.method_defined? :method1
         C.method_defined? "method1"
         C.method_defined? "method2"
         C.method_defined? "method3"
         C.method_defined? "method4"
