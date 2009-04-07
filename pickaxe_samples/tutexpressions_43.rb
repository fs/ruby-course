#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
class Song
  include Comparable
  @@plays = 0
  attr_reader :name, :artist, :duration
  attr_writer :duration
  def initialize(name, artist, duration)
    @name     = name
    @artist   = artist
    @duration = duration
    @plays    = 0
  end
  def to_s
    "Song: #{@name}--#{@artist} (#{@duration})"
  end
  def name
    @name
  end
  def artist
    @artist
  end
  def duration
    @duration
  end
  def duration=(new_duration)
    @duration = new_duration
  end
  def duration_in_minutes
    @duration/60.0   # force floating point
  end
  def duration_in_minutes=(new_duration)
    @duration = (new_duration*60).to_i
  end
  def play
    @plays  += 1   # same as @plays = @plays + 1
    @@plays += 1
    "#{@name}: #{@plays} plays. Total #{@@plays} plays."
  end
  def record
    "Recording..."
  end
  def inspect
    self.to_s
  end
  def <=>(other)
    self.duration <=> other.duration
  end
end
 song = Song.new(1, 2, 3)
case
when song.name == "Misty"
  puts "Not again!"
when song.duration > 120
  puts "Too long!"
when Time.now.hour > 21
  puts "It's too late"
else
  song.play
end
