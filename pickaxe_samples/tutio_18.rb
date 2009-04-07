#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'net/http'

h = Net::HTTP.new('www.pragprog.com', 80)

response = h.get('/titles/ruby3/programming-ruby-3')

if response.message == "OK"
#  puts response.body.scan(/<img alt=".*?" src="(.*?)"/m).uniq 
  puts response.body.scan(/<img alt=".*?" src="(.*?)"/m).uniq[0,4]
  puts "..."
end
