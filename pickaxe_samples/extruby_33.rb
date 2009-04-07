#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  gcc -fPIC -I/usr/local/lib/ruby/1.9/i686-linux -g -O2  \
    -c main.c -o main.o
  gcc -shared -o Test.so main.o -lc 
