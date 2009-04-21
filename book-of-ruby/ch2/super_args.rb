# The Book of Ruby - http://www.sapphiresteel.com

class Class1
	def initialize( a, b, c )
		@a = a
		@b = b
		@c = c
	end
end


class Class2 < Class1
	def initialize( a, b, c, d, e, f )
		super( a, b, c )		
	end
end

class Class3 < Class1
	def initialize( a, b, c )
		super		
	end
end

class Class4 < Class1
	def initialize( a, b, c)
		# super()		#<= no args. This would be an error
	end
end


ob2 = Class2.new(1,2,3,4,5,6)
ob3 = Class3.new(1,2,3)
ob4 = Class4.new(1,2,3)

p( ob2 )
p( ob3 )
p( ob4 )