#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
   class String
     def inspect
       to_s
     end
    end
a  = 123 #!sh!
"\123mile"
"Greek pi: \u03c0"
"Greek \u{70 69 3a 20 3c0}"
"Say \"Hello\""
%Q!"I said 'nuts'," I said!
%Q{Try #{a + 1}, not #{a - 1}}
%<Try #{a + 1}, not #{a - 1}>
"Try #{a + 1}, not #{a - 1}"
%{ #{ a = 1; b = 2; a + b } }
