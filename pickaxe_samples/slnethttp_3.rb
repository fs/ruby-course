#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
     require 'net/http'
     require 'uri'
 
     def fetch(uri_str, limit=10)
       fail 'http redirect too deep' if limit.zero?
       puts "Trying: #{uri_str}"
       response = Net::HTTP.get_response(URI.parse(uri_str))
       case response
       when Net::HTTPSuccess     then response
       when Net::HTTPRedirection then fetch(response['location'], limit-1)
       else response.error!
       end
     end
 
     response = fetch('http://www.ruby-lang.org')
     p response.body[0, 50]
