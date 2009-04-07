#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        class String
          def coerce(other)
            case other
            when Integer
              begin
                return other, Integer(self)
              rescue
                return Float(other), Float(self)
              end
            when Float
              return other, Float(self)
            else super
            end
          end
        end
