# The Book of Ruby - http://www.sapphiresteel.com

f = File.new( "test.txt" )
begin
	for i in (1..6) do
		puts("line number: #{f.lineno}")
		line = f.gets.chomp
		num = line.to_i
		puts( "Line '#{line}' is converted to #{num}" )
		puts( 100 / num )
	end
rescue Exception => e
	puts( e.class )
	puts( e )
ensure
	f.close
	puts( "File closed" )
end
