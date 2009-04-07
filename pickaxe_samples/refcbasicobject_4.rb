#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        class Dummy < BasicObject
          def initialize
            @iv = 33
          end
          def double_and_call(value, &block)
            instance_exec(value*2, &block)
          end
        end

        d = Dummy.new
        d.double_and_call(22) do |param|
          ::Kernel::puts "Parameter = #{param}"
          ::Kernel::puts "@iv = #{@iv}"
        end
