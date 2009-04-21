# The Book of Ruby - http://www.sapphiresteel.com

class Mclass
	def initialize(aNum, aStr, anArray)
		@num = aNum
		@str = aStr
		@arr = anArray
	end
	
	def marshal_dump
		[@num, @arr]	
	end		
	
	def marshal_load(data)
		@num = data[0]
		@arr = data[1]
		@str = "default string"
	end
	
end	
		
ob = Mclass.new( 100, "fred", [1,2,3] )
p( ob )
marshal_data = Marshal.dump( ob )	

ob2 = Marshal.load( marshal_data )
p( ob2 )
