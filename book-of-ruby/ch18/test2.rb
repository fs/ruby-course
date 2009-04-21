# The Book of Ruby - http://www.sapphiresteel.com

require 'buggy'
require 'test/unit'


class MyTest < Test::Unit::TestCase		
	
	def setup
	   @game = TestMod::Adventure.new
    end

	def test1		
		@game.treasures.each{ |t|
		   assert(t.value < 2000, "FAIL: #{t} t.value = #{t.value}" )	
		}
	end
	
	def test2
		assert_kind_of( TestMod::Adventure::Map, @game.map)
		assert_kind_of( Array, @game.map)
    end
    
    def teardown
        @game.endgame
    end
	
end