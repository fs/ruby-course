# The Book of Ruby - http://www.sapphiresteel.com

class Y
	def somemethod
		puts("Y's somemethod")
	end
end

class Z < Y
	def somemethod
		puts("Z's somemethod")
	end	
end

zob = Z.new
zob.somemethod

class Z
	undef_method( :somemethod )	
end

zob.somemethod