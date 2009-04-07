#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
      require 'continuation'
      callcc do |cont|
        for i in 0..4
          print "\n#{i}: "
          for j in i*5...(i+1)*5
            cont.call() if j == 7
            printf "%3d", j
          end
        end
      end
      print "\n"
