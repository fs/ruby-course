#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
    require 'socket'
    port = (ARGV[0] || 80).to_i
    server = TCPServer.new('localhost', port)
    while (session = server.accept)
      puts "Request: #{session.gets}"
      session.print "HTTP/1.1 200/OK\r\nContent-type: text/html\r\n\r\n"
      session.print "<html><body><h1>#{Time.now}</h1></body></html>\r\n"
      session.close
    end
