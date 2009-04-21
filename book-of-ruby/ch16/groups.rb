# The Book of Ruby - http://www.sapphiresteel.com

/(hi).*(h...o)/ =~ "The word 'hi' is short for 'hello'."
print( $1, " ", $2, "\n" )				#=> hi hello

/(.)(.)(.)/ =~ "abcdef"			
print( $1, " ", $3, "\n" )				#=> a c

