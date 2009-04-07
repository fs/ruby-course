#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        class A
           def initialize(p1)
             puts "Initializing A: p1 = #{p1}"
             @var1 = p1
           end
        end
        class B < A
          attr_reader :var1, :var2
          def initialize(p1, p2)
            super(p1)
            puts "Initializing B: p2 = #{p2}"
            @var2 = p2
          end
        end

        b = B.new("cat", "dog")
        puts b.inspect
