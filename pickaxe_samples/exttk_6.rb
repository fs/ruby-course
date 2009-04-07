#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'tk'
root = TkRoot.new { title "Ex3" }

top = TkFrame.new(root) { relief 'raised'; border 5 }

lbl = TkLabel.new(top) do
  justify 'center' 
  text    'Hello, World!'
  pack('padx'=>5, 'pady'=>5, 'side' => 'top') 
end

TkButton.new(top) do
  text "Ok"
  command { exit }
  pack('side'=>'left', 'padx'=>10, 'pady'=>10)
end

TkButton.new(top) do
  text "Cancel"
  command { lbl.configure('text'=>"Goodbye, Cruel World!") }
  pack('side'=>'right', 'padx'=>10, 'pady'=>10)
end

top.pack('fill'=>'both', 'side' =>'top')
Tk.mainloop
