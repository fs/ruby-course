# The Book of Ruby - http://www.sapphiresteel.com

a = Proc.new{|x| x = x*10; puts(x) }
b = lambda{|x| x = x*10; puts(x) }
c = proc{|x| x.capitalize! } 

puts( a.class )
puts( b.class )
puts( c.class )