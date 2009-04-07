#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
static VALUE
rb_str_format_m(VALUE str, VALUE arg)
{
    VALUE tmp = rb_check_array_type(arg);

    if (!NIL_P(tmp)) {
        return rb_str_format(RARRAY_LEN(tmp), RARRAY_PTR(tmp), str);
    }
    return rb_str_format(1, &arg, str);
}
