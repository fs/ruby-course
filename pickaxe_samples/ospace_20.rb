#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  class Object
    attr_accessor :timestamp
  end
  class Class
    old_new = instance_method :new
    define_method :new do |*args, &block|
      result = old_new.bind(self).call(*args, &block)
      result.timestamp = Time.now
      result
    end
  end
  class Test
  end
  
  obj1 = Test.new
  sleep(0.002)  #!sh!
  obj2 = Test.new

  obj1.timestamp.to_f
  obj2.timestamp.to_f
