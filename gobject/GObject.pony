use @g_object_ref[NullablePointer[GObjectS]](gobj: NullablePointer[GObjectS] tag)
use @g_object_ref_sink[NullablePointer[GObjectS]](gobj: NullablePointer[GObjectS] tag)
use @g_object_unref[None](gobj: NullablePointer[GObjectS] tag)
//use @g_signal_connect_data[U64](instance: NullablePointer[GObjectS] tag, signal: Pointer[U8] tag, chandler: Pointer[None] tag, data: Any, destdata: Pointer[None] tag, connectflags: I32)
use @g_signal_connect_data[U64](instance: NullablePointer[GObjectS] tag, signal: Pointer[U8] tag, ...)
use @g_object_set_data[None](gobj: NullablePointer[GObjectS] tag, key: Pointer[U8] tag, data: Any tag)
use @g_object_get_data[Any tag](gobj: NullablePointer[GObjectS] tag, key: Pointer[U8] tag)
use @g_object_class_list_properties[Pointer[NullablePointer[GParamSpecS]]](oclass: NullablePointer[GObjectClassS] tag, nproperties: Pointer[U32] tag)
use @g_type_class_ref[NullablePointer[GObjectClassS]](gtype: U64)

use @printf[U32](fmt: Pointer[U8] tag, ...)

use "debug"
use "lib:gobject-2.0"
use "gio"
use "glib"


primitive GObject
  fun signal_connect_data[A: Any](ptr: NullablePointer[GObjectS] tag, signal: Pointer[U8] tag, chandler: GCallback[A], data: A) =>
    @g_signal_connect_data(ptr, signal, chandler, data, Pointer[None], I32(0))

  fun signal_connect[A: Any](ptr: NullablePointer[GObjectS] tag, signal: Pointer[U8] tag, cb: {(): None} val, data: A) => None
    @g_signal_connect_data(ptr, signal,
      @{(c: {(): None} val) =>
      Debug.out("in callbacka\n")
      c()
      Debug.out("in callbackb\n")

      }, cb)

  fun ref_sink(gobj: NullablePointer[GObjectS] tag) =>
    @g_object_ref_sink(gobj)

  fun unref(gobj: NullablePointer[GObjectS] tag) =>
    @g_object_unref(gobj)

  fun gref(gobj: NullablePointer[GObjectS] tag) =>
    @g_object_unref(gobj)

  fun set_data[A: Any tag](gobj: NullablePointer[GObjectS] tag, key: Pointer[U8] tag, data: A tag) => None
    @g_object_set_data[None](gobj, key, data)

  fun get_data[A: Any tag](gobj: NullablePointer[GObjectS] tag, key: Pointer[U8] tag): A tag =>
    @g_object_get_data[A](gobj, key)

  fun g_type_class_ref(gtype: U64): NullablePointer[GObjectClassS] =>
    @g_type_class_ref(gtype)

  fun g_object_class_list_properties(oclass: NullablePointer[GObjectClassS] tag) =>
    var count: U32 = 0
    let q: Pointer[NullablePointer[GParamSpecS]] = @g_object_class_list_properties(oclass, addressof count)
    @printf("Got %d properties\n".cstring(), count)

    let array: Array[NullablePointer[GParamSpecS]] =
      Array[NullablePointer[GParamSpecS]].from_cpointer(q, count.usize())

    try
      for g in array.values() do
        @printf("%s\n".cstring(), g.apply()?.name)
      end
    else
      @printf("I borked\n".cstring())
    end



interface GObjectInterface
  fun ref get_ptr(): NullablePointer[GObjectS]
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

  fun ref list_properties() => None
    let ptr: NullablePointer[GObjectS] = get_ptr()

    let gtype: U64 =
    try
      let gobj: GObjectS = ptr.apply()?
      let gtcs: NullablePointer[GTypeClassS] = gobj.g_type_instance.g_class
      let gtc: GTypeClassS = gtcs.apply()?
      gtc.g_type
    else
      0
    end
    let goc: NullablePointer[GObjectClassS] = GObject.g_type_class_ref(gtype)
    GObject.g_object_class_list_properties(goc)


//    @g_object_class_list_properties(oclass: NullablePointer[GObjectClassS] tag, nproperties: Pointer[U32] tag)

//  fun gref(gobj: NullablePointer[GObjectS] tag): Pointer[GObject] tag =>
//    @g_object_ref(gobj)


type GCallback[A: Any] is @{(NullablePointer[GObjectS] tag): None}
type GCallback2 is @{(NullablePointer[GObjectS] tag): None}

