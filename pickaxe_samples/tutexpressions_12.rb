#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  alias old_backquote `
  def `(cmd)
    result = old_backquote(cmd)
    if $? != 0
      puts "*** Command #{cmd} failed: status = #{$?.exitstatus}"
    end
    result
  end
  print `ls -l /etc/passwd`
  print `ls -l /etc/wibble`
