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
  show "a[2, 2] = 'cat'"
  show "a[2, 0] = 'dog'"
  show "a[1, 1] = [ 9, 8,  7 ]"
  show "a[0..3] = []"
  show "a[5..6] = 99, 98"
