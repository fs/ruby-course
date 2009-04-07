#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        h1 = { "a" => 100, "b" => 200 }
        h2 = { "b" => 254, "c" => 300 }
        h1.merge(h2)
        h1.merge(h2) {|k,o,n| o}
        h1
