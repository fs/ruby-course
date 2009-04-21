# The Book of Ruby - http://www.sapphiresteel.com

file_out1 = File.open( 'comments.txt', 'w' )
file_out2 = File.open( 'nocomments.txt', 'w' )

File.foreach( 'regex1.rb' ){ |line|	
	if line =~ /^\s*#/ then
		file_out1.puts( line )	
	else
		file_out2.puts( line )	
	end
}

file_out1.close
file_out2.close

puts( "Done" )