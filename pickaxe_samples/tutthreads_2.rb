#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  words = Fiber.new do
    File.foreach("testfile") do |line|
      line.scan(/\w+/) do |word|
        Fiber.yield word.downcase
      end
    end
  end

  counts = Hash.new(0)
  while word = words.resume
    counts[word] += 1
  end
  counts.keys.sort.each {|k| print "#{k}:#{counts[k]} "}
puts
