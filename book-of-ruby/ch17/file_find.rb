# The Book of Ruby - http://www.sapphiresteel.com

require 'find'

  $totalsize = 0
  $dirsize = 0
  $files = []
  $dirs = []

def processFiles( baseDir )
  Find.find( baseDir ) { |path|	
	$dirsize += $dirsize	# if a directory
	if (FileTest.directory?(path)) && (path != baseDir ) then				   		
		$dirs << "#{path} [#{$dirsize / 1024}K]" 
		$dirsize = 0		
	else					# if a file
		$filesize = File.size(path)
		$files << "#{path} [#{$filesize} bytes]"
		$dirsize += $filesize		
		$totalsize += $filesize
	end
	}
end

processFiles( '.' ) # edit this to an existing path
puts( "Files..." )
puts( $files.sort )
puts( "\nDirectories..." )
puts( $dirs.sort )
printf( "Total: #{$totalsize} bytes, #{$totalsize/1024}K, %0.02fMB\n\n",  "#{$totalsize/1048576.0}" )
puts( "Total files: #{$files.size}, Total directories: #{$dirs.size}" )