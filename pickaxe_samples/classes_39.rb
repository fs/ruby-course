#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
def MyStruct(*keys)  
  Class.new do  
    attr_accessor *keys  
    def initialize(hash)  
      hash.each do |key, value|  
        instance_variable_set("@#{key}", value)  
      end  
    end  
  end  
end  
  
Person = MyStruct :name, :address, :likes 
dave = Person.new(name: "dave", address: "TX", likes: "Stilton")  
chad = Person.new(name: "chad", likes: "Jazz")  
chad.address = "CO"
  
puts "Dave's name is #{dave.name}"
puts "Chad lives in #{chad.address}"
