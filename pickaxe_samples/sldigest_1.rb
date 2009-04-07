#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'digest/md5'
require 'digest/sha1'

for hash_class in [ Digest::MD5, Digest::SHA1 ]

  puts "Using #{hash_class.name}"

  # Calculate directly
  puts hash_class.hexdigest("hello world")

  # Or by accumulating
  digest = hash_class.new
  digest << "hello" #!sh!
  digest << " "     #!sh!
  digest << "world" #!sh!
  puts digest.hexdigest
  puts
end
