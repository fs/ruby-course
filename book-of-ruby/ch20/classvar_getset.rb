# The Book of Ruby - http://www.sapphiresteel.com

class X
	@@abc = 100	
	
	def self.addvar( aSymbol, aValue )
		class_variable_set( aSymbol, aValue )
	end
	
	def self.getvar( aSymbol )
		return class_variable_get( aSymbol )
	end
end

puts( X.class_eval( '@@abc' ) )
X.class_eval( '@@abc=500' )
puts( X.class_eval( '@@abc' ) )

ob = X.new
X.class_eval( 'def hi;puts("hello");end' )
ob.hi

X.addvar( :@@newvar, 2000 )
puts( X.getvar( :@@newvar ) )

p( X.class_variables )