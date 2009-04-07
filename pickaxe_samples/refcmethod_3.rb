#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        class C
          def one
          end
          def two(a)
          end
          def three(*a)
          end
          def four(a, b)
          end
          def five(a, b, *c)
          end
          def six(a, b, *c, &d)
          end
#          def one;    end
#          def two(a); end
#          def three(*a);  end
#          def four(a, b); end
#          def five(a, b, *c);    end
#          def six(a, b, *c, &d); end
        end
        c = C.new
        c.method(:one).arity
        c.method(:two).arity
        c.method(:three).arity
        c.method(:four).arity
        c.method(:five).arity
        c.method(:six).arity
