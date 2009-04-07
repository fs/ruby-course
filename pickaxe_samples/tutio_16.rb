#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  require 'socket'

  client = TCPSocket.open('127.0.0.1', 'finger')
  client.send("mysql\n", 0)    # 0 means standard packet
  puts client.readlines
  client.close
