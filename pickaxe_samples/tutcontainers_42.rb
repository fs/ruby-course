#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
a = [ 1, 3, "cat" ]
h = { dog: "canine", fox: "lupine" }

# Create Enumerators
enum_a = a.to_enum
enum_h = h.to_enum

enum_a.next
enum_h.next
enum_a.next
enum_h.next
