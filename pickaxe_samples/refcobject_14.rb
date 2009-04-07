         [ 1, 2, 3..4, 'five' ].inspect  #!to_s!
#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
         Time.new.inspect                #!to_s!
         class Demo
           def initialize
             @a, @b = 1, 2
           end
         end
         Demo.new.inspect               #!to_s!
