#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        # Sum some numbers. These forms do the same thing
        (5..10).inject(0) {|sum, n| sum + n }
        (5..10).inject {|sum, n| sum + n }
        (5..10).inject(0, :+)
        (5..10).inject(:+)

        # Multiply some numbers
        (5..10).inject(1) {|product, n| product * n }

        # find the longest word
        longest_word = %w{ cat sheep bear }.inject do |memo, word|
           memo.length > word.length ? memo : word
        end
        longest_word

        # find the length of the longest word
        longest_length = %w{ cat sheep bear }.inject(0) do |memo, word|
           memo >= word.length ? memo : word.length
        end
        longest_length
