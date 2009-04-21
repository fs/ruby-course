# The Book of Ruby - http://www.sapphiresteel.com

require( "fileutils" )

overwrite_prompt = true

# get source directory
puts( "FROM which directory would you like to copy the files?" )
sourcedir = gets().chomp()

if !(File.directory?(sourcedir)) then
	puts( "A directory called #{sourcedir} cannot be found!" )
else
	# get target dir
	puts( "INTO which directory would you like to copy the files?" )
	targetdir = gets().chomp()
	
	ok = true	# if targetdir doesn't exist...
	if !(File.directory?(targetdir) ) then
		ok = false
		puts( "#{targetdir} cannot be found!" )
		puts( "Would you like to create it?")
		answer = gets()
		if (answer[0,1].downcase == 'y') then
			FileUtils.mkdir( targetdir ) # create targetdir
			ok = true
		end
	end
	if ok then
	Dir.foreach( sourcedir ){
	 |f|
	 filepath = "#{sourcedir}\\#{f}"
	  if !(File.directory?(filepath) ) then  	
		if File.exist?("#{targetdir}\\#{f}") then
			puts("#{f} already exists in target directory (not copied)" )
		else
			FileUtils.cp( filepath, targetdir )
			puts("Copying... #{filepath}" )
		end
	 end
	 }
	 end
 end # if sourcedir was not found
 puts( "End" )