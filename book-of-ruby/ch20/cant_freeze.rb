# The Book of Ruby - http://www.sapphiresteel.com

class X
	def a
		puts("method a")
	end
	
	def addMethod( m, &block )
		self.class.send( :define_method, m , &block )
	end
end


# freeze doesn't prevent new method definitions but
# frozen? can be used as a test before doing so!

ob = X.new
ob.instance_variable_set("@aname", "Bert")
ob.addMethod( :xyz ) { puts("My name is #{@aname}") } 
ob.xyz
ob.freeze # try commenting this out
ob.addMethod( :abc ) { puts("This is the abc method") } 
ob.abc
if not( ob.frozen? ) then
	ob.addMethod( :def ) { puts("'def' is not a good name for a method") } 
end
ob.def


