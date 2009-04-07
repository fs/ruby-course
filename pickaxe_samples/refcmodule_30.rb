#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        class Test
          def method_a; end
        private
          def method_b; end
        end
        puts "method_a is #{Test.public_instance_method(:method_a)}"
        puts "method_b is #{Test.public_instance_method(:method_b)}"
