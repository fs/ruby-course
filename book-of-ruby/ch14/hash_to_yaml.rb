# The Book of Ruby - http://www.sapphiresteel.com

require 'yaml'


hsh =	{	:friend1 => 'mary',
			:friend2 => 'sally',
			:friend3 => 'gary',
			:morefriends => {	:chap_i_met_in_a_bar => 'simon',
								:girl_next_door => 'wanda' 
							  }		
		}

y_hsh = hsh.to_yaml
new_hsh = YAML.load( y_hsh ) 


puts( 'YAML HASH' )
puts( y_hsh )
puts
puts( 'YAML HASH displayed by y()' )
y( y_hsh )
puts
puts( 'Inspect YAML version of hash' )
p( y_hsh )
puts
puts( 'Inspect Hash reconstructed from YAML' )
p( new_hsh )

