#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        # encoding: utf-8
        r1 = Regexp.new('^[a-z]+:\\s+\w+')
        r2 = Regexp.new('cat', true)
        r3 = Regexp.new('dog', Regexp::EXTENDED)
        r4 = Regexp.new(r2)
        r5 = Regexp.new("∂elta")
        r1.encoding
        r5.encoding
