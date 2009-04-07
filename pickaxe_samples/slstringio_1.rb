#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'stringio'

sio = StringIO.new("time flies like an arrow")
sio.read(5)
sio.read(5)
sio.pos = 19
sio.read(5)
sio.rewind
sio.write("fruit")
sio.pos = 16
sio.write("a banana")
sio.rewind
sio.read
