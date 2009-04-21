# The Book of Ruby - http://www.sapphiresteel.com

class MyClass
	
	private		
		def priv
			puts( "private" )
		end
		
	protected
		def prot			
			puts( "protected" )
		end		
		
	public				
		def pub
			puts( "public" )
		end
		
		def useOb( anOb )
			anOb.pub
			anOb.prot
			# anOb.priv
		end	
end	


myob = MyClass.new
myob2 = MyClass.new

myob.pub
# myob.prot
# myob.priv

myob.useOb( myob2 )