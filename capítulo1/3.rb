puts "Coloque um valor:"
value = gets
puts "Agora coloque um desconto:"
tax = gets
tax2 = tax.to_f / 100.0
valuetemp = value.to_f * tax2.to_f
total = value.to_f - valuetemp.to_f

puts "O desconto em cima de R$#{value} é #{tax}%, então o valor total R$#{total}"
