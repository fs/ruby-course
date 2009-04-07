#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        a = 102.7
        b = 95       # Fixnum: won't be returned
        c = 12345678987654321
        count = ObjectSpace.each_object(Numeric) {|x| p x }
        puts "Total count: #{count}"
