# The Book of Ruby - http://www.sapphiresteel.com

class Treasure
      def initialize( aName, aDescription )
        @name         = aName
        @description  = aDescription
      end
      
      def to_s # override default to_s method
           "The #{@name} Treasure is #{@description}\n"
      end
end


a = "hello"
b = 123
c = Treasure.new( "ring", "a glittery gold thing" )

p( a )
p( b )
p( c )