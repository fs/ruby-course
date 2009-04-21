# The Book of Ruby - http://www.sapphiresteel.com

require 'yaml'

class Yclass
	def initialize(aNum, aStr, anArray)
		@num = aNum
		@str = aStr
		@arr = anArray
	end
	
	def to_yaml_properties
		["@num", "@arr"]	
	end		
end	
		
ob = Yclass.new( 100, "fred", [1,2,3] )
p( ob )

yaml_ob = YAML.dump( ob )	
puts( yaml_ob )

ob2 = YAML.load( yaml_ob )
p( ob2 )
