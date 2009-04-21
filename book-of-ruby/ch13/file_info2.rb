# The Book of Ruby - http://www.sapphiresteel.com

# Recursively locate all files in all subdirectories beneath specific root directory
# display file sizes and total of all file sizes
# use an array to store file sizes

$dirsize = 0
$files = []

def processfiles( aDir )
 totalbytes = 0
 Dir.foreach( aDir ){
 |f|
 mypath = "#{aDir}\\#{f}"
 if File.directory?(mypath) then
  if f != '.' and f != '..' then
   fsize = processfiles(mypath) / 1024	
   puts( "<DIR> --->#{mypath} contains [#{fsize}] KB" )
   $files << fsize
  end
 else
     filesize = File.size(mypath)
     totalbytes += filesize
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
	printf( "Size of #{dirname} and subdirectories is #{$dirsize} bytes, #{$dirsize/1024}K, %0.02fMB\n\n",  "#{$dirsize/1048576.0}" )
	puts( "This is an unordered list of the file sizes..." )
	p( $files )
	puts( "This is an unordered list of the file sizes (with 0 byte entries deleted)..." )
	$files.delete(0) 
	p( $files )
	puts( "This is a sorted list (low to high) of the file sizes" )
	p( $files.sort )
	puts( "This is a sorted list (high to low) of the file sizes" )
	p( $files.sort.reverse )
end