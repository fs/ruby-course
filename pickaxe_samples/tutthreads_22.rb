#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'monitor'

playlist = []
playlist.extend(MonitorMixin)

# Player thread
Thread.new do
  record = nil
  loop do
    playlist.synchronize do      # < <  BUG!!!
      sleep 0.1 while playlist.empty?
      record = playlist.shift
    end
    play(record)
  end
end

# Customer request thread
Thread.new do
  loop do
    req = get_customer_request
    playlist.synchronize do
      playlist << req
    end
  end
end
