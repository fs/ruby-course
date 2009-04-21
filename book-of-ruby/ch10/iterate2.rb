# The Book of Ruby - http://www.sapphiresteel.com

class MyArray < Array
	def initialize( anArray )
		super( anArray )
	end
	
	def timesRepeat( aNum )
		aNum.times{
			| num |
			self.each{ 
				| anitem |
				yield( "[#{num}] :: '#{anitem}'" )
			}
		}
	end
end


arr = MyArray.new( ["hello","good day","how do you do"] )
numarr = MyArray.new( [1,2,3] )
puts('   arr.timesRepeat( 3 ){ |x| puts(x) }')
arr.timesRepeat( 3 ){ |x| puts(x) }
puts('   numarr.timesRepeat( 3  ){ |x| puts(x) }')
numarr.timesRepeat( 2 ){ |x| puts(x) }