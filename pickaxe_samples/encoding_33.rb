#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
% echo $LANG
en_US.UTF-8
% ruby -e 'p Encoding.default_external.name'
"UTF-8"
% LANG=ja_JP.sjis ruby -e 'p Encoding.default_external.name'
"Shift_JIS"
% LANG= ruby -e 'p Encoding.default_external.name'
"US-ASCII"
