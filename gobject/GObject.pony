use @g_signal_connect_data[U64](instance: GObjectStruct tag, signal: Pointer[U8] tag, ...)
use @g_type_class_ref[NullablePointer[GObjectClassStruct]](gtype: U64)
use @printf[U32](fmt: Pointer[U8] tag, ...)
//use @g_object_set_property[None](gobject: GObjectStruct, name: Pointer[U8] tag, gvalue: GValueStruct tag)
//use @g_object_get_property[None](gobject: GObjectStruct, name: Pointer[U8] tag, gvalue: GValueStruct tag)
use @g_type_instance_get_private[Pointer[GValue]](gi: GTypeInstanceStruct, gtype: U64)


use "debug"
use "lib:gobject-2.0"
use "gio"
use "glib"


primitive GObject
  fun instance_get_private(g: GTypeInstanceStruct, gtype: U64): Pointer[GValue] =>
    @g_type_instance_get_private(g, gtype)

  fun init[A: Any](gtype: String val): A =>
    @g_object_new[A](GType.from_name(gtype), Pointer[U8])


  fun set_property(gobj: GObjectStruct, pname: Pointer[U8] tag, gvalue: GValueStruct) =>
    @g_object_set_property(gobj, pname, gvalue)

  fun get_property(gobj: GObjectStruct, pname: Pointer[U8] tag, gvalue: GValueStruct) =>
    @g_object_get_property(gobj, pname, gvalue)

  fun signal_connect_data[A: Any](ptr: GObjectStruct tag, signal: Pointer[U8] tag, chandler: Pointer[None], data: A) =>
    @g_signal_connect_data(ptr, signal, chandler, data, Pointer[None], I32(0))

//  fun signal_connect_marshall[A: Any, B: GObjectMarshall](ptr: GObjectStruct tag, signal: Pointer[U8] tag, chandler: Pointer[None], data: A) => None
//    Debug.out("GObject.signal_connect_marshall()")
//    @g_signal_connect_data(ptr, signal, chandler, data, Pointer[None], I32(0))
//
//  fun @marshall[A: Any, B: GObjectMarshall](gobj: GObjectStruct, data: A)

//    let m: @{(GObjectStruct, GtkPony) =>
//    @g_signal_connect_data(ptr, signal, chandler, data, Pointer[None], I32(0))








  fun signal_connect[A: Any](ptr: GObjectStruct tag, signal: Pointer[U8] tag, cb: {(): None} val, data: A) => None
    @g_signal_connect_data(ptr, signal,
      @{(c: {(): None} val) =>
      Debug.out("in callbacka\n")
      c()
      Debug.out("in callbackb\n")

      }, cb)

  fun ref_sink(gobj: GObjectStruct tag) =>
    @g_object_ref_sink(gobj)

  fun unref(gobj: GObjectStruct tag) =>
    @g_object_unref(gobj)

  fun gref(gobj: GObjectStruct tag) =>
    @g_object_unref(gobj)

  fun set_data[A: Any tag](gobj: GObjectStruct tag, key: Pointer[U8] tag, data: A tag) => None
    @g_object_set_data[None](gobj, key, data)

  fun get_data[A: Any tag](gobj: GObjectStruct tag, key: Pointer[U8] tag): A tag =>
    @g_object_get_data[A](gobj, key)

  fun g_type_class_ref(gtype: U64): NullablePointer[GObjectClassStruct] =>
    @g_type_class_ref(gtype)

  fun g_object_class_list_properties(oclass: NullablePointer[GObjectClassStruct] tag) =>
    var count: U32 = 0
    let q: Pointer[NullablePointer[GParamSpecStruct]] = @g_object_class_list_properties(oclass, addressof count)
    @printf("Got %d properties\n".cstring(), count)

    let array: Array[NullablePointer[GParamSpecStruct]] =
      Array[NullablePointer[GParamSpecStruct]].from_cpointer(q, count.usize())

    try
      for g in array.values() do
        @printf("%s\n".cstring(), g.apply()?.name)
      end
    else
      @printf("I borked\n".cstring())
    end

//  fun name_from_instance(instance: NullablePointer[GObjectStruct]): String val =>
//    var cptr: Pointer[U8] = @g_type_name_from_instance[Pointer[U8]](instance)
//    String.from_cstring(cptr).clone()


