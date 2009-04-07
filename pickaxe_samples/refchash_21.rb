#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        h = { "a" => 100, "b" => 200 }
        h.fetch("a")
        h.fetch("z", "go fish")
        h.fetch("z") {|el| "go fish, #{el}"}
