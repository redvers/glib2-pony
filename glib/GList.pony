use "lib:glib-2.0"
use @printf[I32](fmt: Pointer[U8] tag, ...)
use @g_list_free[None](ptr: Pointer[None] tag)
use @g_list_nth_data[Pointer[None]](list: Pointer[None] tag, n: U32)

class GList[A: Any]
  var ptr: NullablePointer[GListS[A]] tag = NullablePointer[GListS[A]].none()
  var free_on_gc: Bool = true

  new create(free_on_gc': Bool) => None
    free_on_gc = free_on_gc'

  fun nth_data(n: U32): A =>
    @g_list_nth_data[A](ptr, n)

  fun nth_data_cast[B: Any](n: U32): B =>
    @g_list_nth_data[B](ptr, n)

  fun _final() =>
    if (free_on_gc) then @g_list_free(ptr) end

