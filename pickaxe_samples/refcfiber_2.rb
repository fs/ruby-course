#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        f = Fiber.new do
          num = 1
          loop do
            num += Fiber.yield(num)
          end
        end

        square = 1
        10.times do
          square = f.resume(square)
          print square, ' '
        end
 puts
