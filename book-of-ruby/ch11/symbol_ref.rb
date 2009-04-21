# The Book of Ruby - http://www.sapphiresteel.com

# This is example is adapted from the documentation of Symbol
# in the Ruby class library. The symbol :Fred has been defined
# in three different places - with differing visibility or 'scope'.
# And yet each occurrence of the the identifier :Fred is identical 
# This is how it is documented in the class library...
# -------------------------------------------------------------
#Symbol objects represent names and some strings inside the Ruby interpreter. 
#They are generated using the :name and :"string" literals syntax, and by the various 
#to_sym methods. The same Symbol object will be created for a given name or string 
#for the duration of a program’s execution, regardless of the context or meaning of 
#that name. Thus if Fred is a constant in one context, a method in another, and a class 
#in a third, the Symbol :Fred will be the same object in all three contexts.
# -------------------------------------------------------------

module One
     class Fred
     end
     $f1 = :Fred
end
   
module Two
     Fred = 1
     $f2 = :Fred
end

def Fred()
end

$f3 = :Fred
   
puts( "id of $f1, $f2 and $f3" )
puts( $f1.object_id )
puts( $f2.object_id )
puts( $f3.object_id ) 