#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
class Counter
  attr_accessor :total_count
  def initialize
    self.total_count = 0
  end
  def inc
    self.total_count += 1
  end
end

count = Counter.new

# create 10 threads that each inc() 50,000 times
threads = (1..10).map { Thread.new { 50_000.times { count.inc } } }

threads.each(&:join) #!sh!
count.total_count
