#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
      require 'net/pop'
      pop = Net::POP3.new('server.ruby-stuff.com')
      pop.start('joe', 'secret') do |server|
        msg = server.mails[0]

        # Print the 'From:' header line
        from = msg.header.split("\r\n").grep(/^From: /)[0]
        puts from
        puts
        puts "Full message:"
        text = msg.pop
        puts text
      end
