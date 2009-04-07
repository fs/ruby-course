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

  # Fetch the value of the form field "expression"
  expr = cgi["expression"].to_s
  
  begin
    result = eval(expr)
  rescue Exception => detail
    # handle bad expressions
  end
  
  # display result back to user...
