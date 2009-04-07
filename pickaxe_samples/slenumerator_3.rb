#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'enumerator'
(1..7).each_slice(3) {|slice| print slice.inspect, " " }
puts
(1..7).each_cons(3)  {|cons|  print cons.inspect, " " }
puts
