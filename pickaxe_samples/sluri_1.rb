#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'uri'

uri = URI.parse("http://pragprog.com:1234/mypage.cgi?q=ruby")
uri.class
uri.scheme
uri.host
uri.port
uri.path
uri.query

uri = URI.parse("mailto:ruby@pragprog.com?Subject=help&body=info")
uri.class
uri.scheme
uri.to
uri.headers

uri = URI.parse("ftp://dave@anon.com:/pub/ruby;type=i")
uri.class
uri.scheme
uri.host
uri.port
uri.path
uri.typecode
