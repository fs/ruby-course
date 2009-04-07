#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'soap/rpc/standaloneServer'

module TimeServant
  def TimeServant.now
    Time.now.to_s
  end
end

class Server < SOAP::RPC::StandaloneServer
  def on_init
    servant = TimeServant
    add_method(servant, 'now')
  end
end

if __FILE__ == $0
  svr = Server.new('Server', 
                   'http://pragprog.com/TimeServer', 
                   '0.0.0.0', 
                   12321)
  trap('INT') { svr.shutdown }
  svr.start
end
