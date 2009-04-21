# The Book of Ruby - http://www.sapphiresteel.com

def mymethod( somearg )
   print( "I say: " << somearg )
end


this_is_a_method_name = method(:mymethod)

puts( this_is_a_method_name )
puts( "#{this_is_a_method_name.class}" )
this_is_a_method_name.call( "hello world" )