#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
square = "yes"
total = 0

[ 1, 2, 3 ].each do |val; square|
  square = val * val
  total += square
end

puts "Total = #{total}"
puts "Square = #{square}"
