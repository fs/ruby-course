# The Book of Ruby - http://www.sapphiresteel.com

f = File.open( 'friends.sav', 'w' )
Marshal.dump( ["fred", "bert", "mary"], f )
f.close

File.open( 'morefriends.sav', 'w' ){ |friendsfile|	
    Marshal.dump( ["sally", "agnes", "john" ], friendsfile )
}
		
File.open( 'morefriends.sav' ){ |f|	
    $arr = Marshal.load(f)
}
	
myfriends = Marshal.load(File.open( 'friends.sav' ))
morefriends = Marshal.load(File.open( 'morefriends.sav' ))

p( myfriends )
p( morefriends )
p( $arr )