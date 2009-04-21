# The Book of Ruby - http://www.sapphiresteel.com

require 'find'

  $totalsize = 0
  $dirsize = 0


def processFiles( baseDir )
  Find.find( baseDir ) { |path|			
	Thread.pass # Thread.pass
	$dirsize += $dirsize	# if a directory
	if (FileTest.directory?(path)) && (path != baseDir ) then				   		
		print( "\n#{path} [#{$dirsize / 1024}K]" )
		$dirsize = 0		
	else					# if a file
		$filesize = File.size(path)
		print( "\n#{path} [#{$filesize} bytes]" )				
		$dirsize += $filesize		
		$totalsize += $filesize
	end		
}	
end

t1 = Thread.new{
	Thread.stop	
	processFiles( '..' ) # <======= edit this directory name
}

t2 = Thread.new{	
	Thread.stop
	while t1.alive? do 
		print( "\n\t\tProcessing..." )
		Thread.pass
	end
}


t1.run
t2.run
t2.join

	
printf( "\nTotal: #{$totalsize} bytes, #{$totalsize/1024}K, %0.02fMB\n\n",  "#{$totalsize/1048576.0}" )
puts( "Total file size: #{$filesize}, Total directory size: #{$dirsize}" )