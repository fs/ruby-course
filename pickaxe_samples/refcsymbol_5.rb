#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        :"hello there"[1]
        :"hello there"[1,3]
        :"hello there"[1..3]
        :"hello there"[1...3]
        :"hello there"[-3,2]
        :"hello there"[-4..-2]
        :"hello there"[-2..-4]
        :"hello there"[/[aeiou](.)\1/]
        :"hello there"[/[aeiou](.)\1/, 0]
        :"hello there"[/[aeiou](.)\1/, 1]
        :"hello there"[/[aeiou](.)\1/, 2]
        :"hello there"[/(..)e/]
        :"hello there"[/(..)e/, 1]
        :"hello there"["lo"]
        :"hello there"["bye"]
