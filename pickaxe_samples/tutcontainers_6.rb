#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  def show(cmd)
    eval cmd, TOPLEVEL_BINDING
    puts "#{cmd} & $\\rightarrow$ &
          #{eval 'a.inspect', TOPLEVEL_BINDING} \\\\\n"
  end
  show "a = [ 1, 3, 5, 7, 9 ]"
  show "a[1] = 'bat'"
  show "a[-3] = 'cat'"
  show "a[3]  = [ 9, 8 ]"
  show "a[6]  = 99"
