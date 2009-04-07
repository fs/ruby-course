#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  fibs = Fiber.new do
    n1 = n2 = 1
    loop do
      Fiber.yield n1
      n1, n2 = n2, n1+n2
    end
   end

   10.times { print fibs.resume, ' ' }
 puts
