use @g_variant_new[Pointer[GVariantStruct]](fmt: Pointer[U8] tag, ...)
use @g_variant_get[None](me: Pointer[GVariantStruct] tag, fmt: Pointer[U8] tag, ...)

class GVariant
  var ptr: Pointer[GVariantStruct] tag

  fun get_ptr(): Pointer[GVariantStruct] tag => ptr

  new create[A: Any](string: String, data: A) =>
    ptr = @g_variant_new(string.cstring(), data)

  fun ref apply[A: Any tag](string: String): A ? =>
    var tmp: (A | None) = None
    @g_variant_get(ptr, string.cstring(), addressof tmp)
    match tmp
    | let r: A =>
      return r
    else
      error
    end

