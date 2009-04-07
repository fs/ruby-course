#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  re = /(\d+):(\d+)/     # match a time hh:mm
  md = re.match("Time: 12:34am")
  md.class
  md[0]         # == $&
  md[1]         # == $1
  md[2]         # == $2
  md.pre_match  # == $`
  md.post_match # == $'
