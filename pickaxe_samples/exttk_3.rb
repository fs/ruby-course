#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
  TkLabel.new(parent_widget) do
    text    'Hello, World!'
    pack('padx'  => 5,
         'pady'  => 5,
         'side'  => 'left')
  end
  # or
  TkLabel.new(parent_widget, 'text' => 'Hello, World!').pack(...)
