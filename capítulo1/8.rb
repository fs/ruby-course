# Classe de pessoa
class Pessoa
  def initialize; end

  attr_reader :name

  attr_reader :age

  def set_age
    puts 'agora digite uma idade:'
    @age = gets
    @age.to_i
  end

  def set_name
    puts 'agora digite um nome'
    @name = gets
  end
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
badas.set_age
badas.set_name

puts 'agora fala ai do cara de brumado'
wglielber = Amigao.new('CARAI')
wglielber.set_age
wglielber.set_name

puts 'vamos falar dessas kenga agora, la vai:'
puts "a idade de #{wglielber.name} é #{wglielber.age} e a de #{badas.name}
      é #{badas.age}"
puts "encontrei #{wglielber.name} e ele falou #{wglielber.fala},
      ja #{badas.name} falou #{badas.fala}. quem entende?"
