/*
 * name: TypeInfo
 * c:type: GTypeInfo
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
struct GTypeInfoStruct[A: Any]
"""
This structure is used to provide the type system with the information
required to initialize and destruct (finalize) a type's class and
its instances.

The initialized structure is passed to the g_type_register_static() function
(or is copied into the provided #GTypeInfo structure in the
g_type_plugin_complete_type_info()). The type system will perform a deep
copy of this structure, so its memory does not need to be persistent
across invocation of g_type_register_static().
"""
  var class_size: U16 = 0
  var base_init: Pointer[None] = Pointer[None]
  var base_finalize: Pointer[None] = Pointer[None]
  var class_init: Pointer[None] = @{(g: Pointer[None], data: Pointer[None]) => @printf("You need to declare GTypeInfoStruct.class_init callback\n".cstring())}
  var class_finalize: Pointer[None] = Pointer[None]
  var class_data: A
  var instance_size: U16 = 0
  var n_preallocs: U16 = 0
  var instance_init: Pointer[None] = Pointer[None]
  var value_table: Pointer[NullablePointer[GTypeValueTableStruct]] = Pointer[NullablePointer[GTypeValueTableStruct]]

  new create(class_data': A) => class_data = consume class_data'
