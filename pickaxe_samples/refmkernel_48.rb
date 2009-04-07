#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        sprintf("%d %04x", 123, 123)
        sprintf("%08b '%4s'", 123, 123)
        sprintf("%1$*2$s %2$d %1$s", "hello", 8)
        sprintf("%1$*2$s %2$d", "hello", -8)
        sprintf("%+g:% g:%-g", 1.23, 1.23, 1.23)
