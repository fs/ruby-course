#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        a = "hello there"
        a[1]
        a[1,3]
        a[1..3]
        a[1...3]
        a[-3,2]
        a[-4..-2]
        a[-2..-4]
        a[/[aeiou](.)\1/]
        a[/[aeiou](.)\1/, 0]
        a[/[aeiou](.)\1/, 1]
        a[/[aeiou](.)\1/, 2]
        a[/(..)e/]
        a[/(..)e/, 1]
        a["lo"]
        a["bye"]
