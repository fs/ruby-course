#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        f1 = File.new("f1", "w")
        sleep 1 #!sh!
        f2 = File.new("f2", "w")
        f1.stat <=> f2.stat
        # Methods in Comparable are also available
        f1.stat > f2.stat
        f1.stat < f2.stat
