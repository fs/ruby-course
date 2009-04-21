# The Book of Ruby - http://www.sapphiresteel.com

arr = ['one','two','three','four']

# while
puts( "\nwhile..end" )
i = 0
while i < arr.length
	puts(arr[i])
	i += 1
end

puts( "\nbegin..end while" )
i = 0
begin
	puts(arr[i])
	i += 1
end while i < arr.length

# until
puts( "\nuntil..end" )
i = 0
until i == arr.length 
	puts(arr[i])
	i +=1
end

puts( "\nbegin..end until" )
i = 0
begin
	puts(arr[i]) 
	i += 1
end until arr[i] == nil 

# for
puts( "\nfor..in..end" )
for s in arr
	puts( s )
end

# each
puts( "\neach..do..end" )
arr.each do |s|
	puts(s)
end

# loop
puts( "\nloop (do..end)" )
i=0
loop do
	puts(arr[i])
	i+=1
	if (i == arr.length) then 
		break 
	end
end

i=0
puts( "\nloop (curly braces)" )
loop {
	puts(arr[i])
	i+=1
	if (i == arr.length) then 
		break 
	end
}