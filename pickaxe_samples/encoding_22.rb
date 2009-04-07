#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
# encoding: ascii-8bit
str = "\xc3\xa9"     # e-acute in UTF-8
str.encoding
str.force_encoding("utf-8") #!sh!
str.bytes.to_a
str.encoding
