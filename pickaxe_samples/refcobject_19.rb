#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
#        module M;    end
        module M
        end
        class A
          include M
        end
#        class B < A; end
        class B < A
        end
#        class C < B; end
        class C < B
        end
        b = B.new
        b.instance_of? A
        b.instance_of? B
        b.instance_of? C
        b.instance_of? M
        b.kind_of? A
        b.kind_of? B
        b.kind_of? C
        b.kind_of? M
