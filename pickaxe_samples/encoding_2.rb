#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
encodings = {}
Encoding.list.each {|enc| encodings[enc.name] = [enc.name] }
Encoding.aliases.each do |alias_name, base_name|
  fail "#{base_name} #{alias_name}" unless encodings[base_name]
  encodings[base_name] << alias_name
end

names = encodings
          .values
          .sort_by {|base_name, *| base_name.downcase}
          .map do |base_name, *rest|
            if rest.empty?
              base_name
            else
             "#{base_name} (#{rest.join(', ')})"
            end
          end


names.each_with_index do |name, index|
  print name.gsub(/_/) { "\\_"}
  if (index + 1) % 3 == 0
    puts "\\\\"
  else
    print " & "
  end
end

puts "\\\\"
