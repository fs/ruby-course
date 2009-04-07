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
  'hello'
  'a backslash \'\\\''
  %q/simple string/
  %q(nesting (really) works)
  %q no_blanks_here ;
