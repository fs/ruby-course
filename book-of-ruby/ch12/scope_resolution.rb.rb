# The Book of Ruby - http://www.sapphiresteel.com

ACONST = "hello"

module OuterMod
	module InnerMod
		ACONST=10
		class Class1
			class Class2
				module XYZ
					class ABC
						ACONST=100
						def xyz						
							puts( ::ACONST )
						end
					end
				end
			end
		end
	end
end


puts(OuterMod::InnerMod::ACONST)
puts(OuterMod::InnerMod::Class1::Class2::XYZ::ABC::ACONST)
ob = OuterMod::InnerMod::Class1::Class2::XYZ::ABC.new
ob.xyz