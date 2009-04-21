# The Book of Ruby - http://www.sapphiresteel.com

# print only comments
File.foreach( 'regex1.rb' ){ |line|	
	if line =~ /^\s*#/ then
		puts( line )
	end
}


