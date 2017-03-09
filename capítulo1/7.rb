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

badas = Pessoa.new
badas.set_Age
badas.set_Name
puts 'agora vamos mostrar as informações do individuo:'
puts "Nome: #{badas.get_Name}, Idade:#{badas.get_Age}"
