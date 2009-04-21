# The Book of Ruby - http://www.sapphiresteel.com

x = (1..5).collect{ |i| i }
p( x )

arr = [1,2,3,4,5]
y = arr.collect{ |i| i }
p( y )
z = arr.collect{ |i| i * i }
p( z )

p( arr.include?( 3 ) )
p( arr.include?( 6 ) )
p( arr.min )
p( arr.max )