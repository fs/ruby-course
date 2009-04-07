#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        h = Hash.new("Go Fish")
        h["a"] = 100
        h["b"] = 200
        h["a"]
        h["c"]
        # The following alters the single default object
        h["c"].upcase!
        h["d"]
        h.keys
