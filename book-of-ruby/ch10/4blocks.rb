# The Book of Ruby - http://www.sapphiresteel.com

# using 'yield' to execute a block

def aMethod
	puts('--- In aMethod ---' )
	yield
end

aMethod{ puts( "Good morning" ) }


def caps( anarg ) 
	puts('--- In caps method ---' )
	yield( anarg )
end

caps( "a lowercase string" ){ |x| x.capitalize! ; puts( x ) }

puts( "And now a block within a block..." )
# a block within a block
["hello","good day","how do you do"].each{ 
	|s| 
	caps( s ){ |x| x.capitalize!
		puts( x )
	}  
}


