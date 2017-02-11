class Pessoa
    def initialize; end

    def get_Name
        @name
    end

    def get_Age
        @age
    end

    def set_Age
        puts 'agora digite uma idade:'
        @age = gets
        @age.to_i
    end

    def set_Name
        puts 'agora digite um nome'
        @name = gets
    end
end

class Amigao < Pessoa
    def initialize(falaEspecifica)
        @fala = falaEspecifica
    end

    def get_Fala
        @fala
    end
end

puts 'fala ai do cara de cacule'
badas = Amigao.new('MAHRECO')
badas.set_Age
badas.set_Name

puts 'agora fala ai do cara de brumado'
wglielber = Amigao.new('CARAI')
wglielber.set_Age
wglielber.set_Name

puts 'vamos falar dessas kenga agora, la vai:'
puts "a idade de #{wglielber.get_Name} é #{wglielber.get_Age} e a de #{badas.get_Name} é #{badas.get_Age}"
puts "encontrei #{wglielber.get_Name} e ele falou #{wglielber.get_Fala}, ja #{badas.get_Name} falou #{badas.get_Fala}. quem entende?"
