#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'open3'

Open3.popen3('bc') do | stdin, stdout, stderr |

  Thread.new { loop { puts "STDOUT stream: #{stdout.gets}" } }
  Thread.new { loop { puts "STDERR stream: #{stderr.gets}" } }
  
  stdin.puts "3 * 4"
  stdin.puts "1 / 0"
  stdin.puts "2 ^ 5"
#  sleep 0.1
  100000.times { Thread.pass }
end
