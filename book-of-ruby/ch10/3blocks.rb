# The Book of Ruby - http://www.sapphiresteel.com

puts( '--- Proc.new ---' )
a = Proc.new{|x| x = x*10; puts(x) }
a.call(100)

puts('----Block #1---' )
b = lambda{|x| x = x*10; puts(x) }
b.call(100)

puts('---Block #2---' )
c = proc{|x| x.capitalize! }      
c1 = c.call( "hello" )
puts( c1 )

puts('---Block #3---' )
d = lambda{|x| x.capitalize! }      
d1 = ["hello","good day","how do you do"].each{ |s| d.call(s)}
puts(d1.inspect)
