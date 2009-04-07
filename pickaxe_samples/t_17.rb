#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  class WordIndex
    def initialize
      @index = {}
    end
    def add_to_index(obj, *phrases)
      phrases.each do |phrase|
        phrase.scan(/\w[-\w']+/) do |word|   # extract each word
          word.downcase!
          @index[word] = [] if @index[word].nil?
          @index[word].push(obj)
        end
      end
    end
    def lookup(word)
      @index[word.downcase]
    end
  end
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
class SongList
  def initialize
    @songs = Array.new
    @index = WordIndex.new
  end
  # more methods to follow...
  def append(song)
    @songs.push(song)
    @index.add_to_index(song, song.name, song.artist)
    self
  end
  def delete_first
    @songs.shift
  end
  def delete_last
    @songs.pop
  end
  def [](index)
    @songs[index]
  end
  def with_title(title)
    for i in 0...@songs.length
      return @songs[i] if title == @songs[i].name
    end
    return nil
  end
  def with_title(title)
    @songs.find {|song| title == song.name }
  end
  def lookup(word)
    @index.lookup(word)
  end
  def search(name, params)
    # ...
  end
end  
Dir.chdir("code")
File.open("songdata") do |song_file|
  songs = SongList.new

  song_file.each do |line|
    file, length, name, title = line.chomp.split(/\s*\|\s*/)
    name.squeeze!(" ")
    songs.append(Song.new(title, name, length))
  end

  puts songs[1]
end
