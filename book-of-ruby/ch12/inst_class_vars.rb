# The Book of Ruby - http://www.sapphiresteel.com

module X
	@instvar = "X's @instvar"
	@@classvar = "X's @@classvar"
	
	def amethod
		@instvar = 10 
		puts(@instvar)
	end
	
	def self.aaa
		puts(@instvar)
	end
end

include X
X.aaa						#=> X's @instvar
puts( @instvar )			#=> nil
amethod						#=> 10
puts( @instvar )			#=> 10
@instvar = "hello world"
puts( @instvar )			#=> "hello world"
puts( @@classvar )			#=> X's @classvar
@@classvar = "bye bye"
puts( @@classvar )			#=> "bye bye"

puts( "Module X's instance variables..." )
p( X.instance_variables )
puts( "self's instance variables..." )
p( self.instance_variables )