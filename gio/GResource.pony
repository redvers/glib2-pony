use "lib:gtk-4"
use "lib:gio-2.0"
use "debug"
use "glib"
use "gobject"

use @printf[I32](fmt: Pointer[U8] tag, ...)
use @g_resource_load[Pointer[GResourceS] tag](str: Pointer[U8] tag, gerr: Pointer[NullablePointer[GError]])
use @g_resource_new_from_data[Pointer[GResourceS] tag](gbytes: Pointer[GBytesS] tag, gerr: Pointer[NullablePointer[GError]])
use @g_resource_unref[None](gobj: Pointer[GResourceS] tag)
use @g_resource_ref[Pointer[GResourceS] tag](gobj: Pointer[GResourceS] tag)
use @g_resources_register[None](gobj: Pointer[GResourceS] tag)
use @g_resource_enumerate_children[Pointer[Pointer[U8]]](resource: Pointer[GResourceS] tag, path: Pointer[U8] tag, lookupflags: I32, gerror: Pointer[NullablePointer[GError]] tag)
use @g_strfreev[None](ppu8: Pointer[Pointer[U8]])

class GResource
  var ptr: Pointer[GResourceS] tag
  var ge: NullablePointer[GError] = NullablePointer[GError].none()

  fun ref get_ptr(): Pointer[GResourceS] tag => ptr

  new new_from_data(gbytes: GBytes) => None
    ge.none()
    ptr = @g_resource_new_from_data(gbytes.ptr, addressof ge)

  new load(str: String val)? =>
    ge.none()
    ptr = @g_resource_load(str.cstring(), addressof ge)
    if (ge.is_none()) then
      @g_resource_ref(ptr)
    else
      @printf("domain: %d\n".cstring(), ge.apply()?.domain)
      @printf("code: %d\n".cstring(), ge.apply()?.code)
      @printf("message: %s\n".cstring(), ge.apply()?.message)
      ge.apply()?.dispose()
      error
    end

  fun ref enumerate_children(path: String val, flags: I32): Array[String val] val ? =>
    // Ensure that our GError is null before we start
    ge.none()
    let ppu8: Pointer[Pointer[U8]] = @g_resource_enumerate_children(ptr, path.cstring(), 0, addressof ge)
    if (ge.is_none()) then
      let r: Array[String val] val = PonyTypes.ppu8_to_array_string(ppu8)
      @g_strfreev(ppu8)
      return r
    end
    error

  fun register() =>
    Debug.out("GResources.register()\n")
    @g_resources_register(ptr)

  fun _final() => None
    if (ptr.is_null()) then
      ifdef debug then @printf("GResource._final() called on null\n".cstring()) end
    else
      ifdef debug then @printf("GResource._final() called\n".cstring()) end
      @g_resource_unref(ptr)
    end
