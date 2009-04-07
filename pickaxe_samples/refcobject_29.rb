#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        class Dummy
          def initialize
            @var = 99
          end
          def remove
            remove_instance_variable(:@var)
          end
          def var_defined?
            defined? @var
          end
        end
        d = Dummy.new
        d.var_defined?
        d.remove
        d.var_defined?
