# Ruby Sample program from www.sapphiresteel.com 

h1 = {	'room1'=>'The Treasure Room',
	'room2'=>'The Throne Room',
	'loc1'=>'A Forest Glade',
	'loc2'=>'A Mountain Stream' }

class X
	def initialize( aName )
		@name = aName
	end
end

x1 = X.new('my Xobject')

h2 = Hash.new("Some kind of ring")
h2['treasure1'] = 'Silver ring'
h2['treasure2'] = 'Gold ring'
h2['treasure3'] = 'Ruby ring'
h2['treasure4'] = 'Sapphire ring'
h2[x1] = 'Diamond ring'

h3 = { 
'treasure3'=>'Ruby ring',
'treasure1'=>'Silver ring',
'treasure4'=>'Sapphire ring',
'treasure2'=>'Gold ring' 
}

p(h2)						# inspect Hash
puts(h1['room2'])			# get value using a key ('The Throne Room')
p(h2['treasure1'])			# get value using a key ('Silver ring')
p(h1['unknown_room'])		# returns default value (nil)
p(h2['unknown_treasure'])	# returns default value ('Some kind of ring')
p(h1.default)				#=> nil
p(h2.default)				#=> 'Some kind of ring'
h1.default = 'A mysterious place'
puts(h1.default)			#=> 'A mysterious place'
p(h2[x1])					# here key is object, x1; value is 'Diamond ring'