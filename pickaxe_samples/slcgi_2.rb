#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'cgi'
class String
 def inspect
   self
 end
end
      CGI.unescapeHTML('&quot;a&quot;&lt;=&gt;b')
      CGI.unescapeHTML('&#65;&#x41;')
      str = '&#x3c0;r&#178;'
      str.force_encoding("utf-8")  #!sh!
      CGI.unescapeHTML(str)
