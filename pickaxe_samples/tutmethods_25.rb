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
class SongList
  def search(name, params)
    # ...
  end
end  
list = SongList.new
list.search(:titles,
            { :genre              => "jazz",
              :duration_less_than => 270
            })
