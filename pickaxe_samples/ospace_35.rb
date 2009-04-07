#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  class Special
    def initialize(valuable, volatile, precious)
      @valuable = valuable
      @volatile = volatile
      @precious = precious
    end

    def marshal_dump
      [ @valuable, @precious ]
    end

    def marshal_load(variables)
      @valuable = variables[0]
      @precious = variables[1]
      @volatile = "unknown"
    end

    def to_s
      "#@valuable #@volatile #@precious"
    end
  end

  obj = Special.new("Hello", "there", "World")
  puts "Before: obj = #{obj}"
  data = Marshal.dump(obj)

  obj = Marshal.load(data)
  puts "After: obj = #{obj}"
