#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  md = /(\d\d):(\d\d)(..)/.match("12:50am")
  "Hour is #{md[1]}, minute #{md[2]}"
  md = /((\d\d):(\d\d))(..)/.match("12:50am")
  "Time is #{md[1]}"
  "Hour is #{md[2]}, minute #{md[3]}"
  "AM/PM is #{md[4]}"
