#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
         ARGV.replace %w{ fred=10 barney=cat }
         ENV['AUTH_TYPE'] = "basic"
         ENV['HTTP_USER_AGENT'] = "Mozscape Explorari V5.6"
         require 'cgi'
         c = CGI.new
         c.auth_type
         c.user_agent
