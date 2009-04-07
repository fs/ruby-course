#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
 car_age = 5.2
#car_age = gets.to_f    # let's assume it's 5.2

case car_age
when 0...1
  puts "Mmm.. new car smell"
when 1...3
  puts "Nice and new"
when 3...6
  puts "Reliable but slightly dinged"
when 6...10
  puts "Can be a struggle"
when 10...30
  puts "Clunker"
else
  puts "Vintage gem"
end
