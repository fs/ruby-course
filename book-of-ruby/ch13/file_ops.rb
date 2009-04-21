# The Book of Ruby - http://www.sapphiresteel.com

# File.exist? will return true if a specific file or
# directory exists (note, you must use two slashes \\
# in directory paths inside a string

puts( "Testing File.exist? ..." )
if File.exist?( "C:\\" ) then
	puts( "Yup, you have a C:\\ directory" )
else
	puts( "Eeek! Can't find the C:\\ drive!" )
end

if File.exist?( "Z:\\" ) then
	puts( "Yup, you have a Z:\\ directory" )
else
	puts( "Eeek! Can't find the Z:\\ drive!" )
end

# to check if a specific name is a directory rather
# than a data file, use File.directory?
def dirOrFile( aName )
	if File.directory?( aName ) then
		puts( "#{aName} is a directory" )
	else
		puts( "#{aName} is a file" )
	end
end

puts( "\ndirOrFile..." )
dirOrFile("file_ops.rb")
dirOrFile("C:\\")

# An example of using File.exist? and
# File.directory? to take differing actions
# if a file is a data file or a directory
def dirOrFile2( aName )
if File.exists?( aName ) then
	puts( "#{aName} found" )
	if File.directory?( aName ) then
		puts( "#{aName} is a directory" )
	else
		puts( "#{aName} is a file" )
	end
else
	puts( "#{aName} can't be found!" )
end
end

puts( "\ndirOrFile2..." )
dirOrFile2("file_ops.rb")
dirOrFile2("C:\\")
dirOrFile2( "gribbitsnorp.xyz" )
