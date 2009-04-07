#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        module Picky
          def Picky.extend_object(o)
            if String === o
              puts "Can't add Picky to a String"
            else
              puts "Picky added to #{o.class}"
              super
            end
          end
        end
        (s = Array.new).extend Picky  # Call Object.extend
        (s = "quick brown fox").extend Picky
