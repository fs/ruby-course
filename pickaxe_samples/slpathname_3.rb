#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'pathname'

p1 = Pathname.new("/usr/bin/ruby") #!sh!
p1.file?
p1.directory?
p1.executable?
p1.size

p2 = Pathname.new("testfile")

p2.read
p2.readlines
