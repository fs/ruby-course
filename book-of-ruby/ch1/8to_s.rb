# The Book of Ruby - http://www.sapphiresteel.com Show string representations of
# various objects using the to_s method

class Treasure
  def initialize(name, description)
    @name         = name
    @description  = description
  end
  # This time we won't override to_s so the Treasure object will use the default
  # to_s method...
end


t = Treasure.new 'Sword', 'A lovely Elvish weapon'
puts("Class.to_s: #{Class.to_s}")
puts("Object.to_s: #{Object.to_s}")
puts("String.to_s: #{String.to_s}")
puts("100.to_s: #{100.to_s}")
puts("Treasure.to_s: #{Treasure.to_s}")
puts("t.to_s: #{t.to_s}")
puts("t.inspect: #{t.inspect}")
