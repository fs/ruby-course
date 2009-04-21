# The Book of Ruby - http://www.sapphiresteel.com
# This is an example how how *not* to use modules
# Here we have mixed modules and classes in a way which
# makes their dependency and scoping impenetrably difficult 
# to follow - which just goes to show that, while 
# mixin modules can help to avoid complexity, it all depends
# on how they are used! 

module MagicThing  # module 
	def m_power 
		return @m_power
	end
	
	def m_power=(aPower)
		@m_power=aPower
	end
	
	class MagicClass	# class inside module
		attr_accessor :woofledust
	end
end

module Treasure # module 
	attr_accessor :value
	attr_accessor :insurance_cost
end

module MetalThing
	attr_accessor :type_of_metal
	include MagicThing					# This includes module MagicThing and subclasses
	class Attributes < MagicClass		# class Attributes from a class inside module MagicThing	
			attr_accessor :hardness
			attr_accessor :shininess
	end
end

include MetalThing						# includes module MetalThing withing scope of main program
class Weapon < MagicClass				# class Weapon subclassed from MagicClass which is in module
	attr_accessor :deadliness			# MagicThing which is included in module MetalThing
	attr_accessor :power
	class WeaponAttributes < Attributes	# subclasses WeaponAttributes from class Attributes
		attr_accessor :nastiness		# in module MetalThing which is itself subclassed
	end									# from class MagicClass inside module MagicThing
end

class Sword < Weapon					# class Sword subclassed from Weapon which is subclassed
  include Treasure						# modules Treasure and MagicThing included
  include MagicThing
  
  attr_accessor :name
end

s = Sword.new
s.name = "Excalibur"
s.deadliness = 10
s.power = 20
s.value = 500
s.insurance_cost = 10000
s.m_power = "incredibly magical"
s.woofledust = "lots of it"
weapon_atts = Weapon::WeaponAttributes.new
weapon_atts.nastiness = "very nasty"
weapon_atts.hardness = "terribly hard"
weapon_atts.shininess = "like a mirror"


puts(s.name)
puts(s.deadliness)
puts(s.power)
puts(s.value)
puts(s.insurance_cost)
puts(s.m_power)
puts(s.woofledust)
puts(weapon_atts.nastiness)
puts(weapon_atts.hardness)
puts(weapon_atts.shininess)