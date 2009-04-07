#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        rd, wr = IO.pipe

        if fork
          wr.close
          puts "Parent got: <#{rd.read}>"
          rd.close
          Process.wait
        else
          rd.close
          puts "Sending message to parent"
          wr.write "Hi Dad"
          wr.close
        end
