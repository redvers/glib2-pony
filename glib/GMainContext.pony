use "lib:glib-2.0"
use @printf[I32](fmt: Pointer[U8] tag, ...)
use @g_main_context_default[Pointer[GMainContextStruct]]()
use @g_main_context_iteration[I32](me: Pointer[GMainContextStruct], mayblock: I32)

class GMainContext
  var ptr: Pointer[GMainContextStruct]

  new default() =>
    ptr = @g_main_context_default()

  fun ref iteration(mayblock: Bool) =>
    if (mayblock) then
      @g_main_context_iteration(ptr, 1)
    else
      @g_main_context_iteration(ptr, 0)
    end

