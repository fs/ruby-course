#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'mailread'

#MAILBOX = "/Users/dave/Library/Mail/Mailboxes/Ruby/Talk.mbox/mbox"
MAILBOX="code/rubytalk.mbx"
msg = Mail.new(MAILBOX)
msg.header.keys
msg.body[0]
msg.body[1]
msg.body[2]
