# The Book of Ruby - http://www.sapphiresteel.com
# include Comapareble module to define comparison methods

class Being
	include Comparable
	
	# this array defines the relative sizes of beings
	BEINGS = ['hobbit','dwarf','elf','orc','giant','oliphant','dragon']
	
	attr_accessor :name
	# here we simply compare the index of one being's name
	# with another's
	
	def <=> (anOtherName)
			BEINGS.index[@name]<=>BEINGS.index[anOtherName]
	end
	
	def initialize( aName )
		@name = aName
	end
	
end

elf =  Being.new('elf')
orc = Being.new('orc')
giant = Being.new('giant')

puts( elf.name < orc.name )
puts( elf.name > giant.name )