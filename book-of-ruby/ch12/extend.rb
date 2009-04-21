# The Book of Ruby - http://www.sapphiresteel.com

module A
	def method_a
		puts( 'hello from a' )
	end
end

module B
	def method_b
		puts( 'hello from b' )
	end
end

module C
	def mymethod
		puts( 'hello from mymethod of module C' )
	end
end

module D
	def method_d
		puts( 'hello from d' )
	end
end


class MyClass
	def mymethod
		puts( 'hello from mymethod of class MyClass' )
	end
end


ob = MyClass.new
ob.mymethod

ob.extend(A)

ob.method_a

ob.extend(B, C)

ob.method_b
ob.mymethod

ob.freeze
	
if !(ob.frozen?)
	ob.extend( D )
	ob.method_d
else
	puts( "Can't extend a frozen object" )
end
