#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        module Mod
          alias_method :orig_exit, :exit
          def exit(code=0)
            puts "Exiting with code #{code}"
            orig_exit(code)
          end
        end
        include Mod
        exit(99)
