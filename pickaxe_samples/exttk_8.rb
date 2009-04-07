#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
require 'tk'

class PigBox
  def pig(word)
    leading_cap = word =~ /^[A-Z]/
    word.downcase!
    res = case word
      when /^[aeiouy]/
        word+"way"
      when /^([^aeiouy]+)(.*)/
        $2+$1+"ay"
      else
        word
    end
    leading_cap ? res.capitalize : res
  end

  def show_pig
    @text.value = @text.value.split.collect{|w| pig(w)}.join(" ")
  end

  def initialize
    ph = { 'padx' => 10, 'pady' => 10 }     # common options

    root = TkRoot.new { title "Pig" }
    top = TkFrame.new(root) { background "white" }

    TkLabel.new(top) {text 'Enter Text:' ; pack(ph) }

    @text = TkVariable.new
    TkEntry.new(top, 'textvariable' =>  @text).pack(ph)

    pig_b = TkButton.new(top) { text 'Pig It'; pack ph}
    pig_b.command { show_pig }
    exit_b = TkButton.new(top) {text 'Exit'; pack ph}
    exit_b.command { exit }
    top.pack('fill'=>'both', 'side' =>'top')
  end
end

PigBox.new
Tk.mainloop
