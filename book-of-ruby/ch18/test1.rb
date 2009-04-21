# The Book of Ruby - http://www.sapphiresteel.com

require 'test/unit'

class TestClass	
	def initialize( aVal )
		@val = aVal * 10
	end
	
	def getVal
		return @val
	end
end

class MyTest < Test::Unit::TestCase		
	def test1
		t = TestClass.new(10)
		assert_equal(100, t.getVal)	
		assert_equal(101, t.getVal)	
		assert(100 != t.getVal)									
	end
	
	def test2		
		assert_equal(1000,TestClass.new(100).getVal)			
	end
end



