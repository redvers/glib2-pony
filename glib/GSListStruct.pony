/*
 * name: SList
 * c:type: GSList
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
struct GSListStruct
"""
The #GSList struct is used for each element in the singly-linked
list.
"""
  var data: Pointer[None] ref = recover iso Pointer[None] end
  var next: NullablePointer[GSListStruct] = recover iso NullablePointer[GSListStruct].none() end

