#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        words = {}
        File.readlines("/usr/share/dict/words").map(&:chomp).each do |word|
          words[word.downcase] = 1
        end

        %w{ c a m e l }.permutation(5) do |letters|
          anagram = letters.join
          puts anagram if words[anagram]
        end
