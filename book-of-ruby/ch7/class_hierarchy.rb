# The Book of Ruby - http://www.sapphiresteel.com

class MyClass
			
end

class MyOtherClass < MyClass

end

def showFamily( aClass )	
	if (aClass != nil) then	
		puts( "#{aClass} :: about to recurse with aClass.superclass = #{aClass.superclass}" )			
		showFamily( aClass.superclass )
	end
end

# Try uncommenting these classes one by one to trace back through
# their family tree...

#showFamily( MyOtherClass )
#showFamily( String )
#showFamily( Object )
#showFamily( Class )


