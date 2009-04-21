# The Book of Ruby - http://www.sapphiresteel.com

class X
	def method_missing( methodname, *args )
		puts( "Class #{self.class} does not understand: #{methodname}( #{args.inspect} )" )
	end	
end

class Y < X	
	
	def aaa
		puts( "aaa method" )
	end
	
	remove_method( :aaa )
end

class Z < Y
	def method_missing( methodname, *args )
		super
		puts( "Now creating method #{methodname}( )" )
		self.class.send( :define_method, methodname, lambda{ |*args| puts( args.inspect) } )
	end	
end


ob = X.new
ob.aaa( 1,2,3 )
ob2 = Y.new
ob2.ccc( "hello world" )
ob3 = Z.new
ob3.ddd( 1,2,3)
ob3.ddd( 4,5,6 )
