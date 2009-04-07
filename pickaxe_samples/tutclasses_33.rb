#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  class MyClass

        def method1    # default is 'public'
          #...
        end

    protected          # subsequent methods will be 'protected'

        def method2    # will be 'protected'
          #...
        end

    private            # subsequent methods will be 'private'

        def method3    # will be 'private'
          #...
        end

    public             # subsequent methods will be 'public'

        def method4    # and this will be 'public'
          #...
        end
  end
