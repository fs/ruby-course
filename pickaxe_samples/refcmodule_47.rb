#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        module Mod
          def a()
          end
#          def a()  end
          def b()
          end
#          def b()  end
          private
          def c()
          end
#          def c()  end
          private :a
        end
        Mod.private_instance_methods
