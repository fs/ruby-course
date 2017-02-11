# Classe de pessoa
class Pessoa
  def initialize; end

  attr_accessor :name, :age
end

# Classe dos amigoes
class Amigao < Pessoa
  attr_accessor :fala

  def initialize(fala)
    @fala = fala
  end

  attr_reader :fala
end

puts 'fala ai do cara de cacule'
badas = Amigao.new('MAHRECO')
puts 'a idade'
badas.age = gets
puts 'o nome'
badas.name = gets

puts 'agora fala ai do cara de brumado'
wglielber = Amigao.new('CARAI')
puts 'a idade'
wglielber.age = gets
puts 'o nome'
wglielber.name = gets

puts 'vamos falar dessas kenga agora, la vai:'
puts "a idade de #{wglielber.name} é #{wglielber.age} e a de #{badas.name}
      é #{badas.age}"
puts "encontrei #{wglielber.name} e ele falou #{wglielber.fala},
      ja #{badas.name} falou #{badas.fala}. quem entende?"
