#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
static VALUE iterate_over(VALUE original_str) {
  int i;
  char *p;
  VALUE str = StringValue(original_str);

  p = RSTRING_PTR(str);   // may be null

  for (i = 0; i < RSTRING_LEN(str); i++, p++) {

    // process *p

  }

  return str;
}
