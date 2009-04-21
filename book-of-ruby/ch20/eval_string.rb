# The Book of Ruby - http://www.sapphiresteel.com
puts("Enter a mathematical expression (such as 2 * 4): " )
exp = gets().chomp()
puts( eval( exp ))
puts( "#{exp}" )