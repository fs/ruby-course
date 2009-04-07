#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

def count_frequency(word_list)
  counts = Hash.new(0)
  for word in word_list
    counts[word] += 1
  end
  counts
end

Dir.chdir("code/wordfreq")
raw_text  = File.read("para.txt")
word_list = words_from_string(raw_text)
counts    = count_frequency(word_list)
sorted    = counts.sort_by {|word, count| count}
top_five  = sorted.last(5)

for i in 0...5            # (this is ugly code
  word = top_five[i][0]   #  which we'll fix shortly)
  count = top_five[i][1]

  puts "#{word}:  #{count}"
end
