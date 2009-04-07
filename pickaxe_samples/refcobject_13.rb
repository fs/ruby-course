#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        class Container
          attr_accessor :content
          def initialize_copy(other)
            @content = String.new(other.content)
          end
        end
        a = Container.new
        a.content = "cat"
        b = a.dup
        a.content[1..-1] = "anary"
        a.content
        b.content
