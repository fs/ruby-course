#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
         a = Array.new
         a[4] = "4";                  a
         a[0] = [ 1, 2, 3 ];          a
         a[0, 3] = [ 'a', 'b', 'c' ]; a
         a[1..2] = [ 1, 2 ];          a
         a[0, 2] = "?";               a
         a[0..2] = "A", "B", "C";     a
         a[-1]   = "Z";               a
         a[1..-1] = nil;              a
