#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'open-uri'
require 'hpricot'

page = Hpricot(open('http://pragprog.com'))

puts "Page title is " + page.at(:title).inner_html

# Output the first paragraph in the div with an id="copyright"
puts page.at('div#copyright p')

# Output the second hyperlink in the site-links div
puts "\nSecond hyperlink is"
puts page.at('div#site-links a:nth(2)')
