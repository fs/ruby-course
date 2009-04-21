# The Book of Ruby - http://www.sapphiresteel.com

f = File.open( 'friends.sav', 'w' )
x = Marshal.dump( ["fred", "bert", "mary"], f )
f.close
p( f )

File.open( 'friends.sav' ){ |f|	
    x = Marshal.load(f)
}

puts( x[0] )
puts( x[1] )

