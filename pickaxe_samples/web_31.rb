#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'google'
require 'cgi'

key = File.read(File.join(ENV['HOME'], ".google_key")).chomp

google = Google::Search.new(key)
result = google.search('pragmatic')

printf "Estimated number of results is %d.\n", 
       result.estimatedTotalResultsCount

printf "Your query took %6f seconds.\n", result.searchTime
first = result.resultElements[0]
puts first.title
puts first.url
puts CGI.unescapeHTML(first.snippet)
