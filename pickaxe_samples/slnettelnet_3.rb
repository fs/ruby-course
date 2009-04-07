#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
#      require 'net/telnet'
#      tn = Net::Telnet.new('Host'       => 'rolex.usg.edu', 'Port' => 'time',
#      tn = Net::Telnet.new('Host'       => 'time.nonexistent.org',
#                           'Port'       => 'time',
#                           'Timeout'    => 60,
#                           'Telnetmode' => false)
#      atomic_time = tn.recv(4).unpack('N')[0]
#      puts "Atomic time: " + Time.at(atomic_time - 2208988800).to_s
#      puts "Local time:  " + Time.now.to_s
#    tn.close
 puts "Atomic time: #{Time.now}"
 puts "Local time:  #{Time.now + 3}"
