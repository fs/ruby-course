#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
static VALUE cd_alloc(VALUE klass) {
  CDJukebox *jukebox;
  VALUE obj;

  // Vendor library creates the Jukebox
  jukebox = new_jukebox();

  // then we wrap it inside a Ruby CDPlayer object
  obj = Data_Wrap_Struct(klass, 0, cd_free, jukebox);

  return obj;
}
