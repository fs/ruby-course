# The Book of Ruby - http://www.sapphiresteel.com

begin
	raise 
rescue Exception => e
	puts( e.class )
	puts( "message: " + e )
end

puts

begin
	raise "An unknown exception just occurred!"
rescue Exception => e
	puts( e.class )
	puts( "message: " + e )
end

puts

begin
	raise ZeroDivisionError
rescue Exception => e
	puts( e.class )
	puts( "message: " + e )
end

puts

begin
	raise ZeroDivisionError.new( "I'm afraid you divided by Zero" )
rescue Exception => e
	puts( e.class )
	puts( "message: " + e )
end
