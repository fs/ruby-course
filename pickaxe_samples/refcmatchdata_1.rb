#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
         m = /(.)(.)(\d+)(\d)/.match("THX1138.")
         m[0]
         m[1, 2]
         m[1..3]
         m[-3, 2]
         m = /..(?<digit_prefix>\d+)\d/.match("THX1138.")
         m[:digit_prefix]
