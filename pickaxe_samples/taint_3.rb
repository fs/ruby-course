#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  # internal data
  # =============

  x1 = "a string"
  x1.tainted?
  
  x2 = x1[2, 4]
  x2.tainted?
  
  x1 =~ /([a-z])/
  $1.tainted?
