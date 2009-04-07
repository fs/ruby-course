#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'thread'
class Resource
  attr_reader :left, :times_had_to_wait
  def initialize(count)
    @left = count
    @times_had_to_wait = 0
    @mutex = Mutex.new
    @empty = ConditionVariable.new
  end
  def use
    @mutex.synchronize do
      while @left <= 0
        @times_had_to_wait += 1
        @empty.wait(@mutex)
      end
      @left -= 1
    end
  end
  def release
    @mutex.synchronize do
      @left += 1
      @empty.signal if @left == 1
    end
  end
end

def do_something_with(resource)
  resource.use
  sleep 0.001 # to simulate doing something that takes time
  resource.release
end
  
resource = Resource.new(2)
user1 = Thread.new { 100.times { do_something_with(resource) } }
user2 = Thread.new { 100.times { do_something_with(resource) } }
user3 = Thread.new { 100.times { do_something_with(resource) } }
user1.join; user2.join; user3.join
resource.times_had_to_wait
