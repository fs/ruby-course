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

ob2 = X.new
ob2.instance_variable_set("@aname", "Mary")
ob2.xyz
puts( ob2.instance_variable_get( :@aname ) )


X::const_set( :NUM, 500 )
puts( X::const_get( :NUM ) )
