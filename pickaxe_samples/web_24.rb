#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'soap/rpc/driver'
require 'cgi'

endpoint = 'http://api.google.com/search/beta2'
namespace = 'urn:GoogleSearch'

soap = SOAP::RPC::Driver.new(endpoint, namespace)

soap.add_method('doGoogleSearch', 'key', 'q', 'start',
                             'maxResults', 'filter', 'restrict',
                             'safeSearch', 'lr', 'ie', 'oe')

query = 'pragmatic'
key = File.read(File.join(ENV['HOME'], ".google_key")).chomp

result = soap.doGoogleSearch(key, query, 0, 1, false, '', 
                             false, '', '', '')

printf "Estimated number of results is %d.\n",
       result.estimatedTotalResultsCount

printf "Your query took %6f seconds.\n", result.searchTime
first = result.resultElements[0]
puts first.title
puts first.uRL
puts CGI.unescapeHTML(first.snippet)
