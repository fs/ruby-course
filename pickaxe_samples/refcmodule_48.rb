#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        class Parent
          def hello
            puts "In parent"
          end
        end
        class Child < Parent
          def hello
            puts "In child"
          end
        end
        
        c = Child.new
        c.hello

        class Child
          remove_method :hello  # remove from child, still in parent 
        end
        c.hello

        class Child
          undef_method :hello   # prevent any calls to 'hello'
        end
        c.hello
