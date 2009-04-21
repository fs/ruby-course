# The Book of Ruby - http://www.sapphiresteel.com

class MyClass
	
	private
		def priv( aStr )			
			return aStr.upcase
		end
		
	protected
		def prot( aStr )			
			return aStr << '!!!!!!'
		end		
		
	public		
		
	    def exclaim( anOb )  # calls a protected method
			puts( anOb.prot( "This is a #{anOb.class} - hurrah" ) )
		end
		
		def shout( anOb )    # calls a private method 
			puts( anOb.priv( "This is a #{anOb.class} - hurrah" ) )
		end
			
end	

class MyOtherClass < MyClass
	
end

class MyUnrelatedClass
	
end

# MyClass
myob = MyClass.new

# MyOtherClass
myotherob = MyOtherClass.new

# MyUnrelatedClass
myunrelatedob = MyUnrelatedClass.new

# calls a public method (shout) with ob of descendent class which calls a private method (priv) - that's NOT OK!
# myob.shout( myotherob ) 

# calls a public method (shout) with ob of ancestor class which calls a private method (priv) - that's NOT OK!
# myotherob.shout( myob ) 

# calls public method (exclaim) which calls a protected method (prot) with a descendent class - that's OK
myob.exclaim( myotherob )

# calls protected method with an ancestor class - that's OK
myotherob.exclaim( myob )

# This won't work
# myob.exclaim( myunrelatedob )