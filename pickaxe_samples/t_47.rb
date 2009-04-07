#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  /(\d\d):(\d\d)(..)/ =~ "12:50am"
  "Hour is #$1, minute #$2"
  /((\d\d):(\d\d))(..)/ =~ "12:50am"
  "Time is #$1"
  "Hour is #$2, minute #$3"
  "AM/PM is #$4"
