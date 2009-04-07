#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  $stdin=DATA
  require 'cgi'
  cgi = CGI.new
  cgi.params
  cgi.params['name']
  cgi.params['reason']
  cgi.params['name'] = [ cgi['name'].upcase ]
  cgi.params
__END__
name=Dave%20Thomas
reason=flexible
reason=transparent
reason=fun
