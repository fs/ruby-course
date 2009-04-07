#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        module Mod
          def one
            "This is one"
          end
          module_function :one
        end
        class Cls
          include Mod
          def call_one
            one
          end
        end
        Mod.one
        c = Cls.new
        c.call_one
        module Mod
          def one
            "This is the new one"
          end
        end
        Mod.one
        c.call_one
