#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'tk'

packing = { 'padx'=>5, 'pady'=>5, 'side' => 'left' }

checked = TkVariable.new

def checked.status
  value == "1" ? "Yes" : "No"
end

status = TkLabel.new do
  text checked.status
  pack(packing)
end

TkCheckButton.new  do
  variable checked
  pack(packing)
end

TkButton.new do
  text "Show status"
  command { status.text(checked.status) }
  pack(packing)
end

Tk.mainloop
