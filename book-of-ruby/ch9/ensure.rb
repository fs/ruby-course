# The Book of Ruby - http://www.sapphiresteel.com

startdir = Dir.getwd
puts( "We start out here: #{startdir}" )

begin
	Dir.chdir( "X:\\" )
	puts( `dir` )
rescue Exception => e
	puts e.class
	puts e
ensure
	Dir.chdir( startdir )
end

puts( "We end up here: #{Dir.getwd}" )