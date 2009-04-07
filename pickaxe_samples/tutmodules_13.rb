#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
    module D
      def initialize(name)
       @name =name
      end
      def to_s
        @name
      end
    end
  module Debug
  include D
    def who_am_i?
      "#{self.class.name} (\##{self.object_id}): #{self.to_s}"
    end
  end
  class Phonograph
    include Debug
    # ...
  end
  class EightTrack
    include Debug
    # ...
  end
  ph = Phonograph.new("West End Blues")
  et = EightTrack.new("Surrealistic Pillow")
  
  ph.who_am_i?
  et.who_am_i?
