# The Book of Ruby - http://www.sapphiresteel.com

puts('Block #1')
3.times do |i|
    puts( i )
end

puts('Block #2')
3.times { |i|
    puts( i )
}

# Here's an example that avoids using a block
def aMethod( i )
	puts( i )
end

puts('Method Call')
for i in 0..2
	aMethod( i )
end