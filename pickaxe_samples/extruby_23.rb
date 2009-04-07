#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
static VALUE cd_init_copy(VALUE copy, VALUE orig) {

  CDJukebox *orig_jb;
  CDJukebox *copy_jb;

  if (copy == orig)
    return copy;

  // we can initialize the copy from other CDPlayers
  // or their subclasses only
  
  if (TYPE(orig) != T_DATA ||
      RDATA(orig)->dfree != (RUBY_DATA_FUNC)cd_free) {
    rb_raise(rb_eTypeError, "wrong argument type");
  }

  // copy all the fields from the original
  // object's CDJukebox structure to the
  // new object

  Data_Get_Struct(orig, CDJukebox, orig_jb);
  Data_Get_Struct(copy, CDJukebox, copy_jb);
  MEMCPY(copy_jb, orig_jb, CDJukebox, 1);

  return copy;
}
