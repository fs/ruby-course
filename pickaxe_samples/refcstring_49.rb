#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        print "Example one\n"
        "hello\nworld".lines {|s| p s}
        print "Example two\n"
        "hello\nworld".lines('l') {|s| p s}
        print "Example three\n"
        "hello\n\n\nworld".lines('') {|s| p s}
