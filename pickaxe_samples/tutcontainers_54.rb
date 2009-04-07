#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  class File
    def self.open_and_process(*args)
      f = File.open(*args)
      yield f
      f.close()
    end
  end


  File.open_and_process("testfile", "r") do |file|
    while line = file.gets
      puts line
    end
  end
