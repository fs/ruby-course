# The Book of Ruby - http://www.sapphiresteel.com

DEBUG = true
X = 10
p( Object.constants )
puts( Object.const_get( :RUBY_VERSION ) )
puts( Object.const_get( :X ) )
RUBY_VERSION = "1.8.7"
puts( RUBY_VERSION  )
RUBY_VERSION = "2.5.6"
X = "Hello world"
if( DEBUG ) then
	puts( Object.const_get( :RUBY_VERSION ) )
	puts( Object.const_get( :X ) )
end