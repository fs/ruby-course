# The Book of Ruby - http://www.sapphiresteel.com

puts( "starting 1st while loop" )
# This executes 0 or more times
i = 10
while i < 10
	puts(i)
	i += 1
end
puts( "1st while loop ended" )

i = 10
# This executes 1 or more times
puts( "\nstarting 2nd while loop" )
begin 
	puts(i)
	i += 1
end while i < 10
puts( "2nd while loop ended" )

x = 100
# code in loop 3 never runs
while (x < 100) do puts('loop 3: x < 100') end

# code in loop 4 never runs
puts('loop 4: x < 100') while (x < 100)

# code in loop 5 runs once
begin puts('loop 5: x < 100') end while (x < 100)

