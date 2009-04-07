#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
re = /((?>X+))(?!O)/

# This one works
re =~ "test XXXY"
$1

# Now this doesn't match
re =~ "test XXXO"
$1

# And this finds the second string of Xs
re =~ "test XXXO XXXXY"
$1
