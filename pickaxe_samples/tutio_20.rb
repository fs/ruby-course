#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'open-uri'
page = open('http://pragprog.com/titles/ruby3').read
if page =~ %r{<title>(.*?)</title>}m
  puts "Title is #{$1.inspect}"
end
