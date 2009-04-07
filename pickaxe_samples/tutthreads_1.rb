#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  counts = Hash.new(0)
  File.foreach("testfile") do |line|
    line.scan(/\w+/) do |word|
      word = word.downcase
      counts[word] += 1
    end
  end
  counts.keys.sort.each {|k| print "#{k}:#{counts[k]} "}
puts
