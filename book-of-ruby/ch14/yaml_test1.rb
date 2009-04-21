# The Book of Ruby - http://www.sapphiresteel.com

require 'yaml'

class Treasure
	def initialize( aName, aValue )
		@name = aName
		@value = aValue
	end
end


# y is a shortcut to print out object in yaml format
y( ['Bert', 'Fred', 'Mary'] )
y( { 'fruit' => 'banana', :vegetable => 'cabbage', 'number' => 3 } )
t = Treasure.new( 'magic lamp', 500 )
y( t )
