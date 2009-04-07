#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
123456                   => 123456   # Fixnum
0d123456                 => 123456   # Fixnum
123_456                  => 123456   # Fixnum - underscore ignored
-543                     => -543     # Fixnum - negative number
0xaabb                   => 43707    # Fixnum - hexadecimal
0377                     => 255      # Fixnum - octal
-0b10_1010               => -42      # Fixnum - binary (negated)
123_456_789_123_456_789  => 123456789123456789 # Bignum
