#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
      require 'net/smtp'

      msg = "Subject: Test\n\nNow is the time\n"
      Net::SMTP.start('pragprog.com', 25, 'pragprog.com',
                      'user', 'password', :cram_md5) do |smtp|
        smtp.send_message(msg, 'dave@pragprog.com', ['dave'])
      end
