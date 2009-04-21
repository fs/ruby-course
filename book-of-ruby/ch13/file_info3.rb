# The Book of Ruby - http://www.sapphiresteel.com

# Recursively locate all files in all subdirectories beneath specific root directory
# display file sizes and total of all file sizes
# use hashes to store file and directory sizes

$dirsize = 0
$dirs = {}
$files = {}

def processfiles( aDir )
 totalbytes = 0
 Dir.foreach( aDir ){
	 |f|
	 mypath = "#{aDir}\\#{f}"
	 if File.directory?(mypath) then	# if this is a directory
	  if f != '.' and f != '..' then	# recurse...
	   dsize = processfiles(mypath) / 1024	
	   $dirs[mypath] = dsize
	  end
	 else
		 filesize = File.size(mypath)
		 totalbytes += filesize
		 $files[mypath] = filesize
	 end
 }
 $dirsize += totalbytes
 return totalbytes
end


### ENTER A DIRECTORY NAME BELOW ###
### Assign an existing directory name to dirname instead of ".."
dirname = ".."

if !(File.directory?(dirname)) then
	puts( "#{dirname} is not a valid directory" )
else
	processfiles( dirname )
	printf( "Size of this directory and subdirectories is #{$dirsize} bytes, #{$dirsize/1024}K, %0.02fMB\n\n",  "#{$dirsize/1048576.0}" )

	puts( "File sizes (ascending)...")	
	$files = $files.sort{|a,b| a[1]<=>b[1]} 
	$files.each{ |fname,fsize| puts( "#{fname} : #{fsize} bytes" ) }
	puts( "\nDirectory sizes (ascending)...")
	$dirs = $dirs.sort{|a,b| a[1]<=>b[1]} 
	$dirs.each{ |dname,dsize| puts( "#{dname} : #{dsize}K" ) }
end