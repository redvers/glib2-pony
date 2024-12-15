
use "lib:glib-2.0"
use @printf[I32](fmt: Pointer[U8] tag, ...)
use @g_list_free[None](...)
use @g_list_length[U32](ptr: Pointer[None] tag)
use @g_list_nth_data[Pointer[None]](list: Pointer[None] tag, n: U32)

class GList[A: Any]
  var ptr: GListStruct[A]
  var free_on_gc: Bool = true

  new create(data: A, free_on_gc': Bool) => None
    free_on_gc = free_on_gc'
    ptr = GListStruct[A].create(consume data)

  fun ref length(): U32 =>
    @g_list_length(NullablePointer[GListStruct[A]](ptr))

  fun ref nth_data(n: U32): A =>
    @g_list_nth_data[A](NullablePointer[GListStruct[A]](ptr), n)

  fun ref nth_data_cast[B: Any](n: U32): B =>
    @g_list_nth_data[B](NullablePointer[GListStruct[A]](ptr), n)

  fun _final() =>
    if (free_on_gc) then @g_list_free(ptr) end

