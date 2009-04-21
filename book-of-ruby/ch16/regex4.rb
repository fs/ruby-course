# The Book of Ruby - http://www.sapphiresteel.com

# change Ruby full-line comments to C-style line comments
File.foreach( 'regex2.rb' ){ |line|	
	line = line.sub(/(^\s*)#(.*)/, '\1//\2') 
		puts( line )
}