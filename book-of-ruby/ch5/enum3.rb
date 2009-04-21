# The Book of Ruby - http://www.sapphiresteel.com

str_arr=['one','two','three','four','five','six','seven']

h = {'one'=>'for sorrow',
	 'two'=>'for joy',
	 'three'=>'for a girl',
	 'four'=>'for a boy',
	 'five'=>'for sorrow',
	 'six'=>'for gold',
	 'seven'=>'for a secret never to be told' }  

puts( '=========== h.keys =============' )

p( h.min{|a,b| a[0].length <=> b[0].length } )
p( h.max{|a,b| a[0].length <=> b[0].length } )

puts( '=========== h.values =============' )

p( h.min{|a,b| a[1].length <=> b[1].length } )
p( h.max{|a,b| a[1].length <=> b[1].length } )

puts( '=========== custom order =============' )

p( h.min{|a,b| str_arr.index(a[0]) <=> str_arr.index(b[0])} )
p( h.max{|a,b| str_arr.index(a[0]) <=> str_arr.index(b[0])} )
