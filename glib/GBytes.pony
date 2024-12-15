use "lib:glib-2.0"
use @printf[I32](fmt: Pointer[U8] tag, ...)
use @g_bytes_new_static[Pointer[GBytesStruct] tag](data: Pointer[U8] tag, size: USize)
use @g_bytes_get_size[USize](data: Pointer[GBytesStruct] tag)
use @g_bytes_get_data[Pointer[U8]](data: Pointer[GBytesStruct] tag, size: USize)
use @g_bytes_ref[None](data: Pointer[GBytesStruct] tag)
use @g_bytes_unref[None](data: Pointer[GBytesStruct] tag)

class GBytes
  var ptr: Pointer[GBytesStruct] tag

  new create(data: ByteSeq) =>
    // This can be _static as we use ByteSeq which is a val
    ptr = @g_bytes_new_static(data.cpointer(), data.size())
    @g_bytes_ref(ptr)

  fun get_size(): USize =>
    @g_bytes_get_size(ptr)

  fun get_data(size: USize): Array[U8] val =>
    recover val
      Array[U8].from_cpointer(@g_bytes_get_data(ptr, size), size)
    end

  fun _final() =>
    @g_bytes_unref(ptr)
