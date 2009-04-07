#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        h = Hash.new
        h.default
        h.default(2)

        h = Hash.new("cat")
        h.default
        h.default(2)

        h = Hash.new {|h,k| h[k] = k.to_i*10}
        h.default
        h.default(2)
