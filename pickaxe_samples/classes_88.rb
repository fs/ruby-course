#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  str1 = "hello"
  str1.freeze
  str1.frozen?
  str2 = str1.clone
  str2.frozen?
  str3 = str1.dup
  str3.frozen?
