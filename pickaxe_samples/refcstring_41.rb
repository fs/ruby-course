#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        "hello".gsub(/[aeiou]/, '*')
        "hello".gsub(/([aeiou])/, '<\1>')
        "hello".gsub(/./) {|s| s[0].to_s + ' '}
        "hello".gsub(/(?<double>l)/, '-\k<double>-')
