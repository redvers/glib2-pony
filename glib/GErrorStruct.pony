/*
 * name: Error
 * c:type: GError
 * glib:is-gtype-struct-for: 
 * opaque: 
 * disguised: 
 * glib:type-name: GError
 * glib:get-type: g_error_get_type
 * c:symbol-prefix: error
 * c:copy-function: 
 * c:free-function: 
 * deprecated: 
 */
struct GErrorStruct
"""
The `GError` structure contains information about
an error that has occurred.
"""
  var domain: U32 = 0
  var code: I32 = 0
  var message: Pointer[U8] ref = recover iso Pointer[U8] end

