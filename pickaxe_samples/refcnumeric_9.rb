#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
cary = [Numeric, Integer, Fixnum, Bignum, Float]
mary = cary.collect {|c| c.instance_methods(false)}
methods = mary.flatten.uniq.sort
methods.delete("singleton_method_added")

def escape(line)
  s = line.sub(/\s+$/, '').
    gsub(/\\/, "\\bs\?C-q").
      gsub(/([_\${}&%#])/, '\\\\\1').
      gsub(/\?C-q/, "{}").
      gsub(/\^/, "\\up{}").
      gsub(/~/, "\\sd{}").
      gsub(/\*/, "$*$").
      gsub(/<</, "<{}<").
      gsub(/>>/, ">{}>").
      gsub(/\[\]/, "$[\\,]$").
      gsub(/,,/, ",{},").
      gsub(/`/,  "\\bq{}")
  s
end

def tputs(line)
  print line
  puts '\\\\'
end

tputs " & " + cary.collect {|klass| klass.name}.join(' & ')
puts "\\midrule"

methods.each_with_index do |op, i|
  print escape(op.to_s), ' & '
  tputs mary.collect {|ms| (ms.member?(op) ? "\\y{}" :
  "--")}.join(' & ')
  puts "\\midrule" if (i % 5) == 4
end
