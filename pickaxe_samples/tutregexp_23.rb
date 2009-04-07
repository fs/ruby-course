#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
# encoding: utf-8
class String
 def inspect
  to_s
 end
end
def show_regexp(string, pattern)
  match = pattern.match(string)
  if match
    "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
  else
    "no match"
  end
end
string = "∂y/∂x = 2πx"
show_regexp(string, /\p{Alnum}/)
show_regexp(string, /\p{Digit}/)
show_regexp(string, /\p{Space}/)
show_regexp(string, /\p{Greek}/)
show_regexp(string, /\p{Graph}/)
