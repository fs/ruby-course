# The Book of Ruby - http://www.sapphiresteel.com
# illustrates how to creating descendent objects
# reading and writing attributes
# object (instance) variables
# also introduces class variables

	# Thing
    class Thing
       @@num_things = 0 # class variable
      
      attr_reader( :name, :description )
      attr_writer( :description )
      
      def initialize( aName, aDescription )
        @name         = aName
        @description  = aDescription
        @@num_things +=1  # increment @@num_things
      end
      
      def to_s # override default to_s method
        return "(Thing.to_s):: The #{@name} Thing is #{@description}"
      end
      
      def show_classvars
        return "There are #{@@num_things} Thing objects in this game"
      end
      
    end
    
	# Room
    class Room < Thing  
      # TODO: Add Room-specific behaviour here...
    end

	# Treasure
    class Treasure < Thing
      attr_reader :value
      attr_writer :value
      
      def initialize( aName, aDescription, aValue )
          super( aName, aDescription )
          @value = aValue
      end
    end
    
    
    # Map
    class Map 
	  # @rooms will be an array - an ordered list 
	  # of Room objects
      def initialize( someRooms )
        @rooms = someRooms
      end
      
      # The to_s method iterates over all the Room objects in @rooms
      # and prints information on each. We'll come back to look at the
      # implementation of this method later on
      def to_s
        @rooms.each {
          |a_room|
          puts(a_room)          
        }
      end
      
    end
    
  # First create a few objects
  #   i) Treasures
  t1 = Treasure.new("Sword", "an Elvish weapon forged of gold",800)
  t2 = Treasure.new("Dragon Horde", "a huge pile of jewels", 550)
  #   ii) Rooms
  room1 = Room.new("Crystal Grotto", "A glittery cavern")
  room2 = Room.new("Dark Cave", "A gloomy hole in the rocks")
  room3 = Room.new("Forest Glade", "A verdant clearing filled with shimmering light")
  #   iii) a Map - which is an array containing the Rooms just created 
  mymap = Map.new([room1,room2,room3])
  # Now let's take a look at what we've got...
  puts "\nLet's inspect the treasures..."
  puts "This is the treasure1: #{t1.inspect}"
  puts "This is the treasure2: #{t2.inspect}"
  puts "\nLet's try out the Thing.to_s method..."
  puts "Yup, treasure 2 is #{t2.to_s}"
  puts "\nNow let's see how our attribute accessors work"
  puts "We'll evaluate this:"
  puts 't1 name=#{t1.name}, description=#{t1.description}, value=#{t1.value}'
  puts "t1 name=#{t1.name}, description=#{t1.description}, value=#{t1.value}"
  puts "\nNow we'll assign 100 to t1.value and alter t1.description..."
  t1.value = 100
  t1.description << " (now somewhat tarnished)" # note << appends specified string to existing string
  puts "t1 (NOW) name=#{t1.name}, description=#{t1.description}, value=#{t1.value}"
  puts "\nLet's take a look at room1..."
  puts "room1 name=#{room1.name}, description=#{room1.description}"
  puts "\nAnd the map..."
  puts "mymap = #{mymap.to_s}"
  puts "\nFinally, let's check how many Thing objects we've created..."
  puts( t1.show_classvars )
 
 # As an exercise, try adding a class variable to the Map class to maintain
 # a count of the total number of rooms that have been created