#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
$: << "code"

class PlaylistBuilder
  Entry = Struct.new(:artist, :title)

  attr_reader :playlist
  def initialize(db)
    @playlist = []
  end

  def include_artist(name)
    @playlist = [ ]
    7.times { @playlist << Entry.new("krauss", "") }
  end

  def include_title(name)
    @playlist = [ ]
    13.times { @playlist << Entry.new("", "midnight") }
  end

end unless defined? PlaylistBuilder

module DBI
  class DBI
    def disconnect
    end
  end
  def connect(arg)
    DBI.new
  end
  module_function :connect
end

require 'test/unit'
#require 'dbi'
require 'playlist_builder'

class TestPlaylistBuilder < Test::Unit::TestCase

  def test_empty_playlist
    db = DBI.connect('DBI:mysql:playlists')
    pb = PlaylistBuilder.new(db)
    assert_empty(pb.playlist)
    db.disconnect
  end

  def test_artist_playlist
    db = DBI.connect('DBI:mysql:playlists')
    pb = PlaylistBuilder.new(db)
    pb.include_artist("krauss")
    refute_empty(pb.playlist, "Playlist shouldn't be empty")
    pb.playlist.each do |entry|
      assert_match(/krauss/i, entry.artist)
    end
    db.disconnect
  end

  def test_title_playlist
    db = DBI.connect('DBI:mysql:playlists')
    pb = PlaylistBuilder.new(db)
    pb.include_title("midnight")
    refute_empty(pb.playlist, "Playlist shouldn't be empty")
    pb.playlist.each do |entry|
      assert_match(/midnight/i, entry.title)
    end
    db.disconnect
  end

  # ...
end
