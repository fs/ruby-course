# The Book of Ruby - http://www.sapphiresteel.com

h = {'one'=>'for sorrow',
	 'two'=>'for joy',
	 'three'=>'for a girl',
	 'four'=>'for a boy'} 


y = h.collect{ |i| i }
p( y )
z = h.collect{ |i| i + i }
p( z )


p( h.include?( 'three' ) )
p( h.include?( 'six' ) )
# Note a Hash is not ordered numerically 
# and min and max return the ASCII order
# of the key
p( h.min )
p( h.max )

p( h.min{|a,b| a[0].length <=> b[0].length } )
p( h.max{|a,b| a[0].length <=> b[0].length } )