#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
         "abc \0\0abc \0\0".unpack('A6Z6')
         "abc \0\0".unpack('a3a3')
         "aa".unpack('b8B8')
         "aaa".unpack('h2H2c')
         "\xfe\xff\xfe\xff".unpack('sS')
         "now=20is".unpack('M*')
         "whole".unpack('xax2aX2aX1aX2a')
