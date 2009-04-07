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
    imap.select('Mail/sent-mail')
    if not imap.list('Mail/', 'sent-apr08')
      imap.create('Mail/sent-apr08')
    end
    imap.search(["BEFORE", "01-May-2008", 
                 "SINCE",  "1-Apr-2008"]).each do |message_id|
      imap.copy(message_id, "Mail/sent-apr08")
      imap.store(message_id, "+FLAGS", [:Deleted])
   end
   imap.expunge
