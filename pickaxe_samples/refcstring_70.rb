#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        " now's   the time".split
        " now's   the time".split(' ') 
        " now's   the time".split(/ /) 
        "a@1bb@2ccc".split(/@\d/)
        "a@1bb@2ccc".split(/@(\d)/)
        "1, 2.34,56, 7".split(/,\s*/)
        "hello".split(//)
        "hello".split(//, 3)
        "hi mom".split(/\s*/)
        
        "".split
