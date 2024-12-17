/*
 * name: Array
 * c:type: GArray
 * glib:is-gtype-struct-for: 
 * opaque: 
 * disguised: 
 * glib:type-name: GArray
 * glib:get-type: g_array_get_type
 * c:symbol-prefix: array
 * c:copy-function: 
 * c:free-function: 
 * deprecated: 
 */
struct GArrayStruct
"""
Contains the public fields of a GArray.
"""
  var data: Pointer[U8] ref = recover iso Pointer[U8] end
  var len: U32 = 0

