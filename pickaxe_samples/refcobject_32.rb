#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        module Chatty
          def Chatty.singleton_method_undefined(id)
            puts "Undefining #{id.id2name}"
          end
          def Chatty.one()   end
          class << self
             undef_method(:one)
          end
        end
