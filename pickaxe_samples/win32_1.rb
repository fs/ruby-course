#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
arg   = "ids=#{resp.intl_orders.join(",")}"
fname = "/temp/invoices.pdf"

site = Net::HTTP.new(HOST, PORT)
site.use_ssl = true 
http_resp, = site.get2("/ship/receipt?" + arg,
                       'Authorization' => 'Basic ' + 
                       ["name:passwd"].pack('m').strip )

File.open(fname, "wb") {|f| f.puts(http_resp.body) }

shell = Win32API.new("shell32","ShellExecute", 
                       ['L','P','P','P','P','L'], 'L' )
shell.Call(0, "print", fname, 0,0, SW_SHOWNORMAL)
