use @g_type_register_static[U64](parenttype: U64, typename: Pointer[U8] tag, info: Pointer[None] tag, flags: I32)
use @g_type_name_from_instance[Pointer[U8]](instance: GObjectStruct tag)
use @g_type_from_name[U64](name: Pointer[U8] tag)
use "../glib"

primitive GType
  fun from_name(name: String val): U64 =>
    @g_type_from_name(name.cstring())

  fun name_from_instance(instance: GObjectInterface): String val =>
    String.from_cstring(@g_type_name_from_instance(instance.get_ptr())).clone()

  fun register_static[A: Any](name: String val, parent_type: String val, typeinfo: GTypeInfo[A]): U64 =>
    @g_type_register_static(from_name(parent_type), name.cstring(), NullablePointer[GTypeInfoStruct[A]](typeinfo.ptr), 0)
