#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
    def one(arg)
      if block_given?
        "block given to 'one' returns #{yield}"
      else
        arg
      end
    end

    def two
      if block_given?
        "block given to 'two' returns #{yield}"
      end
    end

    result1 = one two { 
      "three" 
    }

    result2 = one two do
      "three"
    end

    puts "With braces, result = #{result1}"
    puts "With do/end, result = #{result2}"
