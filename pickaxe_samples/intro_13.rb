#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  a = [ 1, 'cat', 3.14 ]   # array with three elements
  puts "The first element is #{a[0]}"
  # set the third element
  a[2] = nil
  puts "The array is now #{a.inspect}"
