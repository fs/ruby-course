#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
encodings = Encoding.constants.select {|k| Encoding.const_get(k).kind_of? Encoding}

names = {}
encodings.each do |e|
  (names[Encoding.const_get(e).name] ||= []) << e
end

def remove_iso(names, starting_at)
  # group ISO_8859
  key = "ISO-8859-#{starting_at}"
  names.delete(key)
  last = 1
  (starting_at+1).upto(99) do |i|
    key = "ISO-8859-#{i}"
    break unless names.has_key?(key)
    names.delete(key)
    last = i
  end
  names["ISO-8859-#{starting_at} -- #{last}"] = [:"ISO8859_#{starting_at} -- #{last}"]
end

remove_iso(names, 1)
remove_iso(names, 13)

last = 0
0.upto(99) do |i|
  key = "Windows-125#{i}"
  break unless names.has_key?(key)
  names.delete(key)
  last = i
end

last = "125#{last}"
names["Windows-1250 -- #{last}"] = [
  "Windows_1250 -- #{last}",
  "WINDOWS_1250 -- #{last}",
  "CP1250 -- #{last}",
]

last = 0
0.upto(99) do |i|
  key = "IBM86#{i}"
  break unless names.has_key?(key)
  names.delete(key)
  last = i
end

names["IBM860 -- #{last}"] = [
  "IBM860 -- #{last}",
  "CP8600 -- #{last}"
]

names.keys.sort_by(&:upcase).each do |name|
  puts "\\CF{#{name.gsub(/_/, '\\\\_')}}\t\t&"
  puts "\t\\CF{#{names[name].join(', ').gsub(/_/, '\\\\_')}}\\\\"
end
