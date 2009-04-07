#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
srand(99999)
alias sl sleep
FACTOR = 1000.0
def sleep(n)
  n = n / FACTOR
  sl(n)
end
class <<Time
  alias old_now now
  def now
    old_now.to_f*FACTOR
  end
end
require 'monitor'
  
SONGS = [
  'Blue Suede Shoes',
  'Take Five',
  'Bye Bye Love',
  'Rock Around The Clock',
  'Ruby Tuesday'
]

START_TIME = Time.now

def timestamp
  (Time.now - START_TIME).to_i
end

# Wait for up to two minutes between customer requests

def get_customer_request
  sleep(120 * rand)
  song = SONGS.shift
  puts "#{timestamp}: Requesting #{song}" if song
  song
end

# Songs take between two and three minutes
 
def play(song)
  puts "#{timestamp}: Playing #{song}"
  sleep(120 + 60*rand)
end

ok_to_shutdown = false

# and here's our original code

playlist = []
playlist.extend(MonitorMixin)

plays_pending = playlist.new_cond

# Customer request thread
customer = Thread.new do
  loop do
    req = get_customer_request
    break unless req
    playlist.synchronize do
      playlist << req
      plays_pending.signal
    end
  end
end

# Player thread
player = Thread.new do
  loop do
    song = nil
    playlist.synchronize do
      break if ok_to_shutdown && playlist.empty?
      plays_pending.wait_while { playlist.empty? }
      song = playlist.shift
    end
    break unless song
    play(song)
  end
end

customer.join
ok_to_shutdown = true
player.join
