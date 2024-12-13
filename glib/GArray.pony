use "lib:glib-2.0"
use @printf[I32](fmt: Pointer[U8] tag, ...)
use @g_array_new[Pointer[_GArray] tag](zeroterminated: I32, clear: I32, element_size: USize)
use @g_array_ref[None](data: Pointer[_GArray] tag)
use @g_array_unref[None](data: Pointer[_GArray] tag)
use @g_array_append_vals[Pointer[_GArray]](array: Pointer[_GArray] tag, ...) //data: Pointer[None] tag, len: U32)

class GArray
  var ptr: Pointer[_GArray] tag

  new create(zero_terminated: Bool, clear: Bool, element_size: USize) =>
    var zt: I32 = if (zero_terminated) then 1 else 0 end
    var cl: I32 = if (clear) then 1 else 0 end

    ptr = @g_array_new(zt, cl, element_size)
    @g_array_ref(ptr)

  fun ref append_vals(data: Any, len: U32) =>
    ptr = @g_array_append_vals(ptr, data, len)
    @g_array_ref(ptr)

  fun _final() =>
    @g_array_unref(ptr)

