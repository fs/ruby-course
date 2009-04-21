# The Book of Ruby - http://www.sapphiresteel.com

require 'yaml'

class CD
	def initialize( anArtist, aName, theNumTracks )
		@artist		= anArtist
		@name		= aName
		@numtracks	= theNumTracks
	end
end

arr1 =	[	["The Groovesters", "Groovy Tunes", 12 ],
			[  "Dolly Parton", "Greatest Hits", 38 ]
		]
		
arr2 = [	CD.new("The Beasts", "Beastly Tunes", 22),
			CD.new("The Strolling Bones", "Songs For Senior Citizens", 38) 
		]

y( arr1 )		
y( arr2 )
