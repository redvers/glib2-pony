/*
 * name: TypeValueTable
 * c:type: GTypeValueTable
 * glib:is-gtype-struct-for: 
 * opaque: 
 * disguised: 
 * glib:type-name: 
 * glib:get-type: 
 * c:symbol-prefix: 
 * c:copy-function: 
 * c:free-function: 
 * deprecated: 
 */
struct GTypeValueTableStruct
"""
The #GTypeValueTable provides the functions required by the #GValue
implementation, to serve as a container for values of a type.
"""
  var value_init: Pointer[None] = Pointer[None]
  var value_free: Pointer[None] = Pointer[None]
  var value_copy: Pointer[None] = Pointer[None]
  var value_peek_pointer: Pointer[None] = Pointer[None]
  var collect_format: Pointer[U8] ref = recover iso Pointer[U8] end
  var collect_value: Pointer[None] = Pointer[None]
  var lcopy_format: Pointer[U8] ref = recover iso Pointer[U8] end
  var lcopy_value: Pointer[None] = Pointer[None]

