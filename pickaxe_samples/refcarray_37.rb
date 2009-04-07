#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        a = [ "a", "b", "c", "d" ]
        a.fill("x")
        a.fill("z", 2, 2)
        a.fill("y", 0..1)
        a.fill {|i| i*i}
        a.fill(-3) {|i| i+100}
