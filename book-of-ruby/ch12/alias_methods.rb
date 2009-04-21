# The Book of Ruby - http://www.sapphiresteel.com

module Happy
	def Happy.mood
		return "happy"
	end
	
	def expression
		return "smiling"
	end
	alias happyexpression expression
end

module Sad
	def Sad.mood
		return "sad"
	end
	
	def expression
		return "frowning"
	end
	alias sadexpression expression
end

class Person
	include Happy
	include Sad
	attr_accessor :mood
	def initialize
		@mood = Happy.mood
	end
end

p2 = Person.new
puts(p2.mood)
puts(p2.expression)
puts(p2.happyexpression)
puts(p2.sadexpression)
