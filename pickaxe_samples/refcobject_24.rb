#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
          module Other
            def three()
            end
#            def three() end
          end

          class Single
            def Single.four()
            end
#            def Single.four() end
          end

          a = Single.new 

          def a.one()
          end
#          def a.one() end

          class << a
            include Other
            def two()
            end
#            def two() end
          end

          Single.singleton_methods
          a.singleton_methods(false)
          a.singleton_methods(true)
          a.singleton_methods
