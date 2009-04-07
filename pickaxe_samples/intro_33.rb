#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  /\d\d:\d\d:\d\d/     # a time such as 12:34:56
  /Perl.*Python/       # Perl, zero or more other chars, then Python
  /Perl Python/        # Perl, a space, and Python
  /Perl *Python/       # Perl, zero or more spaces, and Python
  /Perl +Python/       # Perl, one or more spaces, and Python
  /Perl\s+Python/      # Perl, whitespace characters, then Python
  /Ruby (Perl|Python)/ # Ruby, a space, and either Perl or Python
