#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'net/http'

pages = %w( www.rubycentral.com  slashdot.org  www.google.com )
threads = []

for page_to_fetch in pages

  threads << Thread.new(page_to_fetch) do |url|

    h = Net::HTTP.new(url, 80)
    print "Fetching: #{url}\n"
    resp = h.get('/')
    print "Got #{url}:  #{resp.message}\n"

  end

end

threads.each {|thr|  thr.join }
