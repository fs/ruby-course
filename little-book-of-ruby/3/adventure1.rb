# Ruby Sample program from www.sapphiresteel.com 

# illustrates how to create descendent objects

class Thing      
      def initialize( aName, aDescription )
        @name         = aName
        @description  = aDescription
      end
      
      def get_name
		return @name
      end
      
      def set_name( aName )
		@name = aName
      end
      
      def get_description
		return @description
      end
      
      def set_description( aDescription )
		@description = aDescription 
      end
end      
    
    
class Treasure < Thing      # Treasure descends from Thing
      def initialize( aName, aDescription, aValue )
          super( aName, aDescription )
          @value = aValue
      end
      
      def get_value
		return @value
      end
      
      def set_value( aValue )
		@value = aValue
      end
end
    

 # This is where our program starts... 
  t1 = Treasure.new("Sword", "an Elvish weapon forged of gold",800)
  t2 = Treasure.new("Dragon Horde", "a huge pile of jewels", 550)  
  puts "This is treasure1: #{t1.inspect}"
  puts "This is treasure2: #{t2.inspect}"
  puts "t1 name=#{t1.get_name}, description=#{t1.get_description}, value=#{t1.get_value}"
  t1.set_value( 100 )
  t1.set_description(" (now somewhat tarnished)")
  puts "t1 (NOW) name=#{t1.get_name}, description=#{t1.get_description}, value=#{t1.get_value}"