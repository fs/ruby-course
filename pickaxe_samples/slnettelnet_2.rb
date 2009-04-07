#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
      require 'net/telnet'
#      tn = Net::Telnet.new({})     {|str| print str }
      tn = Net::Telnet.new({})     {|str| print str.gsub(/\n\s*\n/, "\n").gsub(/^Trying.*\n/, "") }
#      tn.login("guest", "secret")  {|str| print str }
    tn.login("testuser", "wibble")  {|str| print str.gsub(/testuser/, 'guest').gsub(/\n\s*\n/, "\n").gsub(/\A[\s\n]+/, "") }
      tn.cmd("date")               {|str| print str }
      tn.close
