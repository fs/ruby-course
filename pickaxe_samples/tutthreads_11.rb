#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
def inc(n)
  n + 1
end

sum = 0
mutex = Mutex.new
threads = (1..10).map do
  Thread.new do
    10_000.times do
      mutex.lock       ####
      sum = inc(sum)      # one at a time, please
      mutex.unlock     ####
    end
  end
end

threads.each(&:join)
p sum
