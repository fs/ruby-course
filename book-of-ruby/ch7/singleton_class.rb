# The Book of Ruby - http://www.sapphiresteel.com

ob = Object.new

# singleton class
class << ob
	def blather( aStr )
		puts("blather, blather #{aStr}")
	end
end


# ob has all the usual Object methods
# puts( ob.inspect )
# puts( ob.class )

ob.blather( "weeble" )

ob2 = Object.new

# singleton method
def ob2.blather( aStr )
	puts( "grippity, grippity #{aStr}" )
end

ob2.blather( "ping!" )
