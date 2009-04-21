# The Book of Ruby - http://www.sapphiresteel.com

print( "Enter a mathematical expression: " )
exp = gets().chomp()
print( "This is the result of evaluating this with eval(): " )
puts( eval( exp ))
print( 'This is the result of evauating this inside a string "#{exp}": ' )
puts( "#{exp}" )				# here exp is a String and no further evaulation is done
puts( "This is the class of the expression entered: #{exp.class}" ) 
puts( "Which, when evaluated like this (\#{eval(exp)}), gives: #{eval(exp)}" )
puts
print( "Enter the name of a string method (e.g. reverse or upcase): " )
# Here is another example showing how eval and "#{ }" differ when evaulating
# a string
methodname = gets().chomp()
exp2 = "'Hello world'."<< methodname
puts( eval( exp2 ) )
puts( "#{exp2}" )
puts( "#{eval(exp2)}" )