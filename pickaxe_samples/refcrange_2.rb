#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
    class Xs                # represent a string of 'x's
      include Comparable
      attr :length
      def initialize(n)
        @length = n
      end
      def succ
        Xs.new(@length + 1)
      end
      def <=>(other)
        @length <=> other.length
      end
      def inspect
        'x' * @length
      end
    end

    r = Xs.new(3)..Xs.new(6)
    r.to_a
    r.member?(Xs.new(5))
