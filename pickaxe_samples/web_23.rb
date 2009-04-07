#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'soap/rpc/driver'

proxy = SOAP::RPC::Driver.new("http://localhost:12321",
                              "http://pragprog.com/InterestCalc")

proxy.add_method('compound', 'principal', 'rate', 'freq', 'years')

proxy.add_method('call_count')

puts "Call count: #{proxy.call_count}"
puts "5 years, compound annually: #{proxy.compound(100, 0.06, 1, 5)}"
puts "5 years, compound monthly:  #{proxy.compound(100, 0.06, 12, 5)}"
puts "Call count: #{proxy.call_count}"
