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
        cookie = CGI::Cookie.new('name' => 'mycookie',
                                 'value' => 'chocolate chip',
                                 'expires' => Time.now + 3600)

        cgi.out('cookie' => cookie) do
          cgi.head + cgi.body { "Cookie stored" }
        end
