#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  ruby = "/usr/local/rubybook/bin/ruby"
  pid1 = fork { exec "#{ruby} code/socket/logger.rb" }
  500000.times { Thread.pass }
  load 'code/socket/client.rb'
  100000.times { Thread.pass }
  Process.kill('TERM', pid1)
  Process.waitall
