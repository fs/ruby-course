#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
         require 'cgi'
         cgi = CGI.new("html4")
         cookie = cgi.cookies['mycookie']

         cgi.out('cookie' => cookie) do
           cgi.head + cgi.body { "Flavor: " + cookie[0] }
         end
