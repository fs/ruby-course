#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        h = { "a" => 100, "b" => 200 }
        h.default = "Go fish"
        h["a"]
        h["z"]
        h.default_proc = lambda do |hash, key|
          hash[key] = key + key
        end
        h[2]
        h["cat"]
