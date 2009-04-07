#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        # While this creates a new default object each time
        h = Hash.new {|hash, key| hash[key] = "Go Fish: #{key}" }
        h["c"]
        h["c"].upcase!
        h["d"]
        h.keys
