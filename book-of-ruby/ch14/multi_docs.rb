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
		
arr2 = [	CD.new("Gribbit Mcluskey", "Fab Songs", 22),
			CD.new("Wayne Snodgrass", "Singalong-a-Snodgrass", 24) ]

$new_arr = []


File.open( 'multidoc.yml', 'w' ){ |f|
    YAML.dump( arr1, f )
    YAML.dump( arr2, f )
}

File.open( 'multidoc.yml' ) {|f|
    YAML.load_documents( f ) { |doc|
      $new_arr << doc
    }
 }

puts( "$new_arr contains #{$new_arr.size} elements" )
p( $new_arr[0] )
p( $new_arr[1] )
puts
$new_arr.each{ |arr| p( arr ) }