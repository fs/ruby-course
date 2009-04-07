#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
LIB=/usr/local/rubybook/lib
INC=/usr/local/rubybook/include/ruby-1.9.0/ruby
CFLAGS=-I$(INC) -g
LDFLAGS=-L$(LIB) -lruby -ldl -lobjc

embed:  embed.o
        $(CC) -o embed embed.o $(LDFLAGS)
