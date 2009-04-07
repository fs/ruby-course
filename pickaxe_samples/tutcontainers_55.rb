#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  class File
    def self.my_open(*args)
      result = file = File.new(*args)
      # If there's a block, pass in the file and close
      # the file when it returns
      if block_given?
        result = yield file
        file.close
      end

      return result
    end
  end
