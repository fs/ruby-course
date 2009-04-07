#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        r, w = IO.pipe           #               buffer          pipe content
        w << "abc"               #               ""              "abc".
        r.readpartial(4096)      #=> "abc"       ""              ""
        r.readpartial(4096)      # blocks because buffer and pipe is empty.
   
        r, w = IO.pipe           #               buffer          pipe content
        w << "abc"               #               ""              "abc"
        w.close                  #               ""              "abc" EOF
        r.readpartial(4096)      #=> "abc"       ""              EOF
        r.readpartial(4096)      # raises EOFError
   
        r, w = IO.pipe           #               buffer          pipe content
        w << "abc\ndef\n"        #               ""              "abc\ndef\n"
        r.gets                   #=> "abc\n"     "def\n"         ""
        w << "ghi\n"             #               "def\n"         "ghi\n"
        r.readpartial(4096)      #=> "def\n"     ""              "ghi\n"
        r.readpartial(4096)      #=> "ghi\n"     ""              ""
