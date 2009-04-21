# Ruby Sample program from www.sapphiresteel.com 

# Show string representaions of various objects
# using the to_s method

class Treasure
      def initialize( aName, aDescription )
        @name         = aName
        @description  = aDescription
      end
# This time we won't override to_s so the Treasure object
# will use the default to_s method...
end


t = Treasure.new( "Sword", "A lovely Elvish weapon" )
print("Class.to_s: ")
puts(Class.to_s)
print("Object.to_s: ")
puts(Object.to_s)
print("String.to_s: ")
puts(String.to_s)
print("100.to_s: ")
puts(100.to_s)
print("Treasure.to_s: ")
puts(Treasure.to_s)
print("t.to_s: ")
puts(t.to_s) 
print("t.inspect: ")
puts(t.inspect)