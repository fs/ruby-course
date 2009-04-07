#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'code/escape_string'
def char(ch, comment)
  print "#{escape(ch)} &  \\# => #{escape(eval(ch).inspect)} & (#{comment}) \\\\\n"
end
puts "\\begin{tabular}{l l l}\n"
char("?a", 'printable character')
char('?\n', 'code for a newline (0x0a)')
char('?\C-a', 'control a')
char('?\M-a', 'meta sets bit 7')
char('?\M-\C-a', 'meta and control a')
char('?\C-?', 'delete character')
puts "\\end{tabular}"
