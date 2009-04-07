#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
gcc -fno-common -g -O2 -pipe -fno-common \
    -I/usr/lib/ruby/1.9.0/powerpc-darwin   \
    -I/usr/lib/ruby/1.9.0/powerpc-darwin -c main.c

cc -dynamic -bundle -undefined suppress -flat_namespace \
    -L'/usr/lib'  -o Test.bundle main.o -lruby -lpthread -ldl -lobjc 
