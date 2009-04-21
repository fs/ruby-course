# The Book of Ruby - http://www.sapphiresteel.com

# Delete all code in say_hello_controller.rb and copy the
# code below into that file when indicated in the book

class SayHelloController < ApplicationController
   def showFamily( aClass, msg )   
     if (aClass != nil) then   
        msg += "<li>#{aClass}</li>"  
        showFamily( aClass.superclass, msg )
     else
       return msg
     end   
   end

   def index
      @class_hierarchy = "<ul>#{showFamily( self.class, "" )}</ul>"
   end 
end
