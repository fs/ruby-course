#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
$KCODE = "NONE"
require 'jcode'

str = "\342\210\202x/\342\210\202y"
str.length
str.jlength
str.jcount("\210")
str.chop!
str.chop!
