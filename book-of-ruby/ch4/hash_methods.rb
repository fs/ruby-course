# The Book of Ruby - http://www.sapphiresteel.com

h1 = {	
	'room1'=>'The Treasure Room',
	'room2'=>'The Throne Room',
	'loc1'=>'A Forest Glade',
	'loc2'=>'A Mountain Stream' 
	}
	
h2 = {1=>'one', 2=>'two', 3=> 'three'}
h3 = {6=>'six', 5=>'five', 4=> 'four'}

# a complicated hash!
multihash = {
					'name' => 'Multi-Hash',
					'array' =>	['one','two','three','four'],		
					'nested array' =>	
							["I",
								["wandered","lonely","as",
									["a","cloud"]
								]
							],
						'nested hash' => {'a'=>'hi','b'=>'goodbye'}
					 }

# A utility method to print line numbers before inspecting
# values. To make it easier to match output with the
# numbered tests below
@linenum = 0
def wr( exp )
    @linenum += 1
	print( "(\##{@linenum}) " )
	p( exp )
end


# Testing various Hash methods. Compare output
# with the numbered tests
h1['room1'] = 'You have wandered into a dark room'
wr(h1)						#1
h1.delete('loc2')
wr(h1)						#2
wr(h1.has_key?('loc2'))		#3
wr(h2.has_value?("two"))	#4		
wr(h2.index("two"))			#5
wr(h2.invert)				#6
wr(h2.keys)					#7
wr(h2.values)				#8
hnew = h2.merge(h3)
wr(hnew)					#9 
wr(hnew.sort)				#10 - note keys must be of comparable types
wr(multihash.to_a)			#11
wr(multihash.to_a.flatten )	#12 - convert to array and use the flatten method of Array
multihash.clear		
wr(multihash)				#13