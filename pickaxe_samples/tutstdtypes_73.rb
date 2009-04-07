#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  re = /(\d+):(\d+)/
  md1 = re.match("Time: 12:34am")
  md2 = re.match("Time: 10:30pm")
  [ $1, $2 ]   # last successful match
  $~ = md1
  [ $1, $2 ]   # previous successful match
