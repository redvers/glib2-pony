use "gio"
use "glib"

use @g_object_new[GPonyS](gtype: U64, first: Pointer[U8] tag, ...)
use @g_type_from_name[U64](name: Pointer[U8] tag)
use @g_type_register_static[U64](parenttype: U64, typename: Pointer[U8] tag, info: NullablePointer[GTypeInfoS] tag, flags: I32)

class GPony[A: Any] is GObjectInterface
  var ptr: GPonyS
  var gtype: U64

  new create() =>
    gtype = @g_type_from_name("GPony".cstring())
    if (gtype == 0) then
      let gtypeinfo: GTypeInfoS = GTypeInfoS
      gtypeinfo.class_size = 1088 // No methods, so same as GObject
      gtypeinfo.instance_size = 256
      gtypeinfo.n_preallocs = 0

      gtype = @g_type_register_static(80, "GPony".cstring(), NullablePointer[GTypeInfoS](gtypeinfo), 0)
    end

    ptr = @g_object_new(gtype, Pointer[U8])
    GObject.ref_sink(get_ptr())

  fun ref set_pointer[B: Any](data': B) => None
    ptr.data = GValueS
    @g_value_init(NullablePointer[GValueS](ptr.data), U64(68))
    @g_value_set_pointer(NullablePointer[GValueS](ptr.data), data')

  fun ref get_pointer[C: Any](): C =>
    @g_value_get_pointer[C](NullablePointer[GValueS](ptr.data))

  fun ref get_ptr(): NullablePointer[GObjectS] tag =>
    NullablePointer[GObjectS](ptr.parent_instance)


  fun ref get_type(): U64 => gtype

