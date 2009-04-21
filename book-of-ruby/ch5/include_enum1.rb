# The Book of Ruby - http://www.sapphiresteel.com

class MyCollection 
  include Enumerable


	def initialize( someItems )
		@items = someItems
	end
	
	def each
		@items.each{ |i| 
			yield( i )
		}
	end
	

end

		
things = MyCollection.new(['x','yz','defgh','ij','klmno'])

p( things.min )
p( things.max )
p( things.collect{ |i| i.upcase } )

