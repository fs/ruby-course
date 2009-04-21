# The Book of Ruby - http://www.sapphiresteel.com

class MyCollection 
  include Enumerable


	def initialize( someItems )
		@items = someItems
	end
	
	def each
		@items.each{ |i| yield i }
	end
	
end

		
things = MyCollection.new(['z','xy','defgh','ij','abc','klmnopqr'])

h = {'one'=>'for sorrow',
	 'two'=>'for joy',
	 'three'=>'for a girl',
	 'four'=>'for a boy',
	 'five'=>'for sorrow',
	 'six'=>'for gold',
	 'seven'=>'for a secret never to be told' }  
	 
h_keys = MyCollection.new( h.keys )
h_vals = MyCollection.new( h.values )

puts( '=========== things =============' )
x = things.collect{ |i| i } 
p( x )
y = things.max
p( y )
z = things.min
p( z )
p( things.include?('def') )
p( things.include?('xy') )


puts( '=========== h_keys =============' )
x = h_keys.collect{ |i| i } 
p( x )
y = h_keys.max
p( y )
z = h_keys.min
p( z )
p( h_keys.include?('two') )
p( h_keys.include?('twenty') )

puts( '=========== h_vals =============' )
x = h_vals.collect{ |i| i } 
p( x )
y = h_vals.max
p( y )
z = h_vals.min
p( z )
p( h_vals.include?('for joy') )
p( h_vals.include?('for misery') )