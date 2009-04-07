#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
         module Mod
           def method1()
           end
#           def method1()  end
           private :method1
           def method2()
           end
#           def method2()  end
         end
         Mod.instance_methods
         Mod.private_instance_methods
