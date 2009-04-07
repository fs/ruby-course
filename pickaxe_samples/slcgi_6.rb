#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        require 'cgi'
        cgi = CGI.new("html4Tr")
        cgi.header("type" => "text/html", "expires" => Time.now + 30)
        cgi.out do
          cgi.html do
            cgi.head{ cgi.title{"Hello World!"} } +
            cgi.body do
              cgi.pre do
                CGI::escapeHTML(
                 "params: " + cgi.params.inspect + "\n" +
                 "cookies: " + cgi.cookies.inspect + "\n")
              end
            end
          end
        end
