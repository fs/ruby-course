#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        module Chatty
          def Chatty.singleton_method_added(id)
            puts "Adding #{id.id2name} to #{self.name}"
          end
          def self.one()     end
          def two()          end
        end
        def Chatty.three() end

        obj = "cat"
        def obj.singleton_method_added(id)
          puts "Adding #{id.id2name} to #{self}"
        end
        
        def obj.speak
          puts "meow"
        end
