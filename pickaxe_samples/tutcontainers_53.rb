#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
triangular_numbers = Enumerator.new do |yielder|
  # ... as before
  number = 0
  count = 1
  loop do
    number += count
    count += 1
    yielder.yield number
  end
end

class Enumerator
  def infinite_select(&block)
    Enumerator.new do |yielder|
      self.each do |value|
        yielder.yield(value) if block.call(value)
      end
    end
  end
end

p triangular_numbers 
   .infinite_select {|val| val % 10 == 0}  
   .infinite_select {|val| val.to_s =~ /3/ } 
   .first(5)
