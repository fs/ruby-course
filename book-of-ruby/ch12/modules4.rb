# The Book of Ruby - http://www.sapphiresteel.com

module MagicThing
	attr_accessor :power
end

module Treasure
	attr_accessor :value
	attr_accessor :owner 
end

class Weapon
	attr_accessor :deadliness
end

class Sword < Weapon
  include Treasure
  include MagicThing
  
  attr_accessor :name
end

s = Sword.new
s.name = "Excalibur"
s.deadliness = "fatal"
s.value = 1000
s.owner = "Gribbit The Dragon"
s.power = "Glows when Orcs Appear"

puts(s.name)
puts(s.deadliness)
puts(s.value)
puts(s.owner)
puts(s.power)
