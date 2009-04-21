# The Book of Ruby - http://www.sapphiresteel.com

# Delete all code in say_hello_controller.rb and copy the
# code below into that file when indicated in the book

class SayHelloController < ApplicationController
	def showFamily( aClass, msg )	
	  if (aClass != nil) then	
	     msg += "<br />#{aClass}"  
	     showFamily( aClass.superclass, msg )
	  else
		 render :text => msg
	  end   
	end

	def index
	   showFamily( self.class, "Class Hierarchy of self..." )
	end
 
end
