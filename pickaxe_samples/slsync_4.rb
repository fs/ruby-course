#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'sync'

class Counter
  attr_accessor :total_count
  attr_accessor :count_down
  def initialize
    self.total_count = 0
    self.count_down = 0
    @sync = Sync.new
  end
  def inc
    @sync.synchronize(:EX) do
      self.total_count += 1
      self.count_down  -= 1
    end
  end
  def test_consistent
    @sync.synchronize(:SH) do
      fail "Bad counts" unless self.total_count + self.count_down == 0
    end
  end
end

count = Counter.new

# create 10 threads that each inc() 50,000 times
threads = (1..10).map do
  Thread.new do
    50_000.times do
      count.inc
      count.test_consistent
    end
  end
end

threads.each(&:join) #!sh!
count.total_count
