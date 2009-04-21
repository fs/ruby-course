# The Book of Ruby - http://www.sapphiresteel.com
# Calculate tax on a fixed sum

subtotal = 100.00
taxrate = 0.175 # one zero only before decimal point
tax = subtotal * taxrate
puts "Tax on $#{subtotal} is $#{tax}, so grand total is $#{subtotal+tax}"