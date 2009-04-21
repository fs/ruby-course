# The Book of Ruby - http://www.sapphiresteel.com

class X
	def a
		puts("method a")
	end
	
	def addMethod( m, &block )
		self.class.send( :define_method, m , &block )
	end
end


ob = X.new
ob.instance_variable_set("@aname", "Bert")
ob.addMethod( :xyz ) { puts("My name is #{@aname}") } 
ob.xyz
X.freeze # try commenting this out
if not( X.frozen? ) then
	ob.addMethod( :def ) { puts("'def' is not a good name for a method") } 
end
if not( X.frozen? ) then
	ob.def
else
	puts( "Can't call ob.def as the X class is frozen" )
end

# The following does no checking and results in an error
ob.addMethod( :abc ) { puts("This is the abc method") } 
ob.abc



