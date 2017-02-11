class Pessoa
    def initialize(aName, anAge)
        @myname = aName
        @age = anAge
    end

    def get_Name
        @myname
    end

    def get_Age
        @age
    end

    def talk
        puts "Ola! meu nome é #{get_Name} e minha idade é #{get_Age}"
        puts 'MAREHCOOOOOOO'
    end
end

badas = Pessoa.new('Badaró', 26)
badas.talk
puts ''
p(badas) # inspecionar objeto
