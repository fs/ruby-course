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
    print "Ola! meu nome é #{self.get_Name} e minha idade é #{self.get_Age}"
  end

end

badas = Pessoa.new("Badaró", 26)
badas.talk
