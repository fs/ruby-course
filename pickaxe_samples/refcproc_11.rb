#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        def create_proc
          Proc.new
        end

        my_proc = create_proc { "hello" }
 my_proc = "#<Proc:0x001c7abc@prog.rb:5>"
        my_proc.to_s
