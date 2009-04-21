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


hnew = (h2.merge(h3))
hnew2 = ((h2.merge(h3)).merge(multihash))

#:arg: aHash => Hash
# sort aHash ascending 
def sorted_hash( aHash )
	return aHash.sort{
		|a,b|
			a.to_s <=> b.to_s
		}
end
	
p( sorted_hash(hnew) )
p( sorted_hash(hnew2) )
p( sorted_hash({50=>1, 40=>2, 30=>3}) )