use "debug"
use "lib:gobject-2.0"
use "gio"
use "glib"

interface GObjectInterface
  fun ref get_ptr(): GObjectStruct
  fun ref signal_connect_data[A: Any](signal: String val, chandler: GCallback[A], data: A) => None
    GObject.signal_connect_data[A](get_ptr(), signal.cstring(), chandler, consume data)

  fun ref signal_connect[A: Any #send](signal: String val, cb: {(): None} val, data: A) => None
    GObject.signal_connect[A](get_ptr(), signal.cstring(), cb, consume data)

  fun ref ref_sink() =>
    GObject.ref_sink(get_ptr())

  fun ref unref() =>
    GObject.unref(get_ptr())

  fun ref gref() =>
    GObject.gref(get_ptr())

  fun ref string(): String val =>
    GType.name_from_instance(this)

  fun ref set_property(pname: String val, gvalue: GValue) => None
    GObject.set_property(get_ptr(), pname.cstring(), gvalue.ptr)

  fun ref get_property(pname: String val, gvalue: GValue) => None
    GObject.set_property(get_ptr(), pname.cstring(), gvalue.ptr)

  fun ref get_type(): U64 =>
    // (((((GTypeClass*) (((GTypeInstance*) (Object))->g_class))->g_type)))
    try
      var gtis: NullablePointer[GTypeClassStruct] = get_ptr().g_type_instance.g_class
      gtis.apply()?.g_type
    else
      0
    end

//  fun ref get_private[A: Any]

//  fun ref list_properties() => None
//    let ptr: GObjectStruct = get_ptr()
//
//    let gtype: U64 =
//    try
//      let gtcs: NullablePointer[GTypeClassStruct] = get_ptr().g_type_instance.g_class
//      let gtc: GTypeClassStruct = gtcs.apply()?
//      gtc.g_type
//    else
//      0
//    end
//    let goc: NullablePointer[GObjectClassStruct] = GObject.g_type_class_ref(gtype)
 //   GObject.g_object_class_list_properties(goc)


//    @g_object_class_list_properties(oclass: NullablePointer[GObjectClassStruct] tag, nproperties: Pointer[U32] tag)


