#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
# coding: sjis
 $: << "code/encoding"
# encoding: sjis

require 'iso-8859-1'
require 'utf'

def show_encoding(str)
  puts "'#{str}' (size #{str.size}) is #{str.encoding.name}"
end

show_encoding(STRING_ISO)
show_encoding(STRING_U)  
show_encoding("cat")
