#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
palindrome_matcher = /
\A
 (?<palindrome>
               # nothing, or
  |
    \w         # a single character, or
  |
    (?:        # x <palindrone> x
      (?<some_letter>\w)
      \g<palindrome>
      \k<some_letter+0>
    )
 )
\z
/x
#palindrome_matcher = /
#\A
# (?<palindrome>
#               # nothing, or
#  |
#    \w         # a single character, or
#  |
#    (?:        # x <palindrone> x
#      (?<some_letter>\w)
#      \g<palindrome>
#      \k<some_letter+0>
#    )
# )
#\z
#/x

palindrome_matcher.match "madam"
palindrome_matcher.match "m"
palindrome_matcher.match "adam"
