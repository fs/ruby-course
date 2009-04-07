#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
    class Test
      def test
        :original
      end
    end
    um = Test.instance_method(:test)
    class Test
      def test
        :modified
      end
    end
    t = Test.new
    t.test
    um.bind(t).call
