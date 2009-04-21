# The Book of Ruby - http://www.sapphiresteel.com

s = 'start '
a = Thread.new { (1..10).each{				
				s << 'a' 
				} 
			} 
b = Thread.new { (1..10).each{								
				s << 'b' 
				} 
			} 
                    
a.join
b.join
puts( "#{s} end" )