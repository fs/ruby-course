# The Book of Ruby - http://www.sapphiresteel.com

File.foreach( 'regex1.rb' ){ |line|
	if line =~ /^\s*#(.*)/ then
		puts( $1 )
	end
}