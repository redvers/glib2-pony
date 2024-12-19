use @g_type_name_from_instance[Pointer[U8]](instance: GObjectStruct tag)
use @g_type_from_name[U64](name: Pointer[U8] tag)
use "../glib"

primitive GType
  fun from_name(name: String val): U64 =>
    @g_type_from_name(name.cstring())

  fun name_from_instance(instance: GObjectInterface): String val =>
    String.from_cstring(@g_type_name_from_instance(instance.get_ptr())).clone()
