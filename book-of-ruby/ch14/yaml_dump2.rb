# The Book of Ruby - http://www.sapphiresteel.com

require 'yaml'

f = File.open( 'friends.yml', 'w' )
YAML.dump( ["fred", "bert", "mary"], f )
f.close

File.open( 'morefriends.yml', 'w' ){ |friendsfile|	
    YAML.dump( ["sally", "agnes", "john" ], friendsfile )
}
		
File.open( 'morefriends.yml' ){ |f|	
    $arr= YAML.load(f)
}
	
myfriends = YAML.load(File.open( 'friends.yml' ))
morefriends = YAML.load(File.open( 'morefriends.yml' ))
puts( myfriends )
puts
puts( morefriends )
puts
p( $arr )