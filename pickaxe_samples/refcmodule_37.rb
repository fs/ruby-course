#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        class A
          def fred
            puts "In Fred"
          end
          def create_method(name, &block)
            self.class.send(:define_method, name, &block)
          end
          define_method(:wilma) { puts "Charge it!" }
        end
        class B < A
          define_method(:barney, instance_method(:fred))
        end
        b = B.new
        b.barney
        b.wilma
        b.create_method(:betty) { p self }
        b.betty
