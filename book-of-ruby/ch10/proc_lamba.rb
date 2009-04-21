# The Book of Ruby - http://www.sapphiresteel.com

puts( '--- Proc.new ---' )
a = Proc.new{|x,y,z| x = y*z; puts(x) }
a.call(2,5,10,100)

puts('----Block #1---' )
b = lambda{|x,y,z| x = y*z; puts(x) }
# b.call(2,5,10,100)
b.call(2,5,10)

puts('---Block #2---' )
c = proc{|x,y,z| x = y*z; puts(x) }
# c.call(2,5,10,100)
c.call(2,5,10)
