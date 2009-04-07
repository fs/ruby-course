#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'gserver'

class LogServer < GServer
  def initialize
    super(12345)
  end

  def serve(client)
    client.puts get_end_of_log_file
  end

private

  def get_end_of_log_file
    log = File.open("/var/log/system.log")
    log.seek(-1000, IO::SEEK_END)   # back up 1000 characters from end
    log.gets                        # ignore partial line
    log.read                        # and return rest
  end
end

server = LogServer.new
server.start.join
