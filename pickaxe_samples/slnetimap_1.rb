#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
    require 'net/imap'

    imap = Net::IMAP.new('my.mailserver.com')
    imap.authenticate('LOGIN', 'dave', 'secret')
    imap.examine('INBOX')
    puts "Message count: #{ imap.responses["EXISTS"]}"
    imap.search(["TO", "dave"]).each do |message_id|
      envelope = imap.fetch(message_id, "ENVELOPE")[0].attr["ENVELOPE"]
         puts "#{envelope.from[0].name}: \t#{envelope.subject}"
    end
