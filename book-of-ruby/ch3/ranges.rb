# The Book of Ruby - http://www.sapphiresteel.com

a = (1..10)
b = (-10..-1)
c = (-10..10)
d = ('a'..'z')		# two dot array - 'a'..'z'
e = ('a'...'z')		# three dot array - 'a'..'y'
f = (1.4..2.5 )		# floating point range

puts(a)
puts(b)
puts(c)
puts(d)
puts(e)
puts(f)
print(c.to_a)
puts
print(d.to_a)
puts
print(e.to_a)
# You can't convert a floating point range to an array as the
# total number of values is undefined
# print(f.to_a) # this won't run!
