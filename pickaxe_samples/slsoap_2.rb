#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'code/soap/timeserver.rb'
@server = Server.new('Server', 'http://pragprog.com/TimeServer', '0.0.0.0', 12321)
@server.level = Logger::Severity::ERROR
@t = Thread.new do
  @server.start
end
while @server.status != :Running
  sleep 0.1
  unless @t.alive?
    @t.join
    raise
  end
end
require 'soap/rpc/driver'

proxy = SOAP::RPC::Driver.new("http://localhost:12321",
                              "http://pragprog.com/TimeServer")

proxy.add_method("now")
p proxy.now
