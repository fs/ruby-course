#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        require 'socket'
        addr = Socket.pack_sockaddr_in(80, "pragprog.com")
        # Pragprog.com is 65.74.171.137
        addr.unpack("CCnC4")
