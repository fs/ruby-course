class Pessoa

  def set_Name(aName)
    @myname = aName
  end

  def get_Name
    @myname
  end

  def talk
    print "Ola! meu nome é #{self.get_Name}"
  end

end

badas = Pessoa.new
badas.set_Name("Badas")
badas.get_Name
badas.talk
puts ""
danilao = Pessoa.new
danilao.set_Name("danilao")
danilao.get_Name
danilao.talk
