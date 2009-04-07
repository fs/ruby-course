#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'soap/rpc/standaloneServer'
require 'interestcalc'

NS = 'http://pragprog.com/InterestCalc'

class Server2 < SOAP::RPC::StandaloneServer

  def on_init
    calc = InterestCalculator.new
    add_method(calc, 'compound', 'principal', 'rate', 'freq', 'years')
    add_method(calc, 'call_count')
  end

end

svr = Server2.new('Calc', NS, '0.0.0.0', 12321)
trap('INT') { svr.shutdown }

svr.start
