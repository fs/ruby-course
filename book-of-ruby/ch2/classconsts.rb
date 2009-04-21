# The Book of Ruby - http://www.sapphiresteel.com

class X
	A = 10
	
	class Y
		def xyz
			puts( "goodbye" )
		end
	end
	
	def self.abc
		puts("hello")
	end
end

puts( X::A )
X::abc		# you may also access class methods with ::
X.abc		# though a single dot also works here!

ob = X::Y.new
ob.xyz
