#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  srand 2
  count = 0
  threads = []
  10.times do |i|
    threads[i] = Thread.new do
      sleep(rand(0.1))
      Thread.current["mycount"] = count 
      count += 1
    end
  end
  threads.each {|t| t.join; print t["mycount"], ", " }
  puts "count = #{count}"
