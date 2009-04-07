#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
    require 'socket'

    PORT = 4321

    server = UDPSocket.open
    server.bind(nil, PORT)
    server_thread = Thread.start(server) do |server|  # run server in a thread
      3.times { p server.recvfrom(64) }
    end
    

    # Ad-hoc client
    UDPSocket.open.send("ad hoc", 0, 'localhost', PORT)
    
    # Connection based client
    sock = UDPSocket.open
    sock.connect('localhost', PORT)
    sock.send("connection-based", 0)
    sock.send("second message", 0)
    server_thread.join
