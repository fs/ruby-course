#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
         s1 = [ "colors", "red", "blue", "green" ]
         s2 = [ "letters", "a", "b", "c" ]
         s3 = "foo"
         a  = [ s1, s2, s3 ]
         a.assoc("letters")
         a.assoc("foo")
