#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
        # open for reading, default external encoding
        f = File.new("testfile", "r")        
        
        # open for reading, assume contents are utf-8
        f = File.new("testfile", "r:utf-8")

        # open for read/write. external utf-8 data will be converted to iso-8859-1
        # when read, and converted from 8859-1 to utf-8 on writing
        f = File.new("newfile",  "w+:utf-8:iso-8859-1")

        # same as specifying "w+"
        f = File.new("newfile", File::CREAT|File::TRUNC|File::RDWR, 0644)
