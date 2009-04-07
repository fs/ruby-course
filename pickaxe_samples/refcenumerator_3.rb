#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        def multiples_of(n)
          Enumerator.new do |yielder|
            number = 0
            loop do
              yielder.yield number
              number += n
            end
          end
        end
        twos = multiples_of(2)
        threes = multiples_of(3)
        5.times do
          puts "#{twos.next} #{threes.next}"
        end
