#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  class VU
    attr_reader :volume

    def initialize(volume)  # 0..9
      @volume = volume
    end

    def inspect
      '#' * @volume
    end

    # Support for ranges
    def <=>(other)
      self.volume <=> other.volume
    end

    def succ
      raise(IndexError, "Volume too big") if @volume >= 9
      VU.new(@volume.succ)
    end
  end
