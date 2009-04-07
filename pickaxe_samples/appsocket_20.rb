#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
    require 'socket'

    SOCKET = "/tmp/sample"
    begin ; File.unlink(SOCKET) ; rescue ; end
    
    sock = UNIXServer.open(SOCKET)
    server_thread = Thread.start(sock) do |sock|      # run server in a thread
      s1 = sock.accept
      p s1.recvfrom(124)
    end

    client = UNIXSocket.open(SOCKET)
    client.send("hello", 0)
    client.close
    
    server_thread.join
