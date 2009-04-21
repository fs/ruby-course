# The Book of Ruby - http://www.sapphiresteel.com

h1 = {	'room1'=>'The Treasure Room',
	'room2'=>'The Throne Room',
	'loc1'=>'A Forest Glade',
	'loc2'=>'A Mountain Stream' }

h2 = Hash.new("Some kind of ring")
h2['treasure1'] = 'Silver ring'
h2['treasure2'] = 'Gold ring'
h2['treasure3'] = 'Ruby ring'
h2['treasure4'] = 'Sapphire ring'
h2['treasure5'] = 'Diamond ring'

	
h4 = h1						# These reference the same Hash
h5 = h1.clone				# h5 is assigned a copy of h1
puts( '   Three tests for equality' )
p(h1 == h2)					#=> false
p(h1 == h4)					#=> true
p(h1 == h5)					#=> false
puts( "   h4 = h1. Let's change item at key 'room1' in h4..." )
h4['room1'] = 'A new Room'
puts( h4['room1'] )
puts( "   ...and now puts(h1['room1'])" )
puts(h1['room1'])			#=> 'A new Room'
puts( "   h5 = h1.clone. Let's change item at key 'room1' in h5..." )
h5['room1'] = 'An even newer Room'
puts(h5['room1'])			#=> 'An even newer Room'
puts( "   ...and now puts(h1['room1'])" )
puts(h1['room1'])			#=> 'A new Room'
puts( "   Finally, let's look inside h1: " )
p(h1)