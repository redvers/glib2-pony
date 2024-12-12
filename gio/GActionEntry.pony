use "glib"
use "gobject"

/*
  Source: /usr/include/glib-2.0/gio/gactionmap.h:57
  Original Name: _GActionEntry
  Struct Size (bits):  512
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [PointerType size=64]->[FundamentalType(char) size=8]: name
     000064: [PointerType size=64]->[FunctionType] -- WRITE MANUALLY: activate
     000128: [PointerType size=64]->[FundamentalType(char) size=8]: parameter_type
     000192: [PointerType size=64]->[FundamentalType(char) size=8]: state
     000256: [PointerType size=64]->[FunctionType] -- WRITE MANUALLY: change_state
     000320: [ArrayType size=(0-2)]->[FundamentalType(long unsigned int) size=64]
*/

struct GActionEntry[A: Any]
  var _name: Pointer[U8] tag = Pointer[U8]
  var _activate: @{(Pointer[GObject], Pointer[GVariant], A): None} = @{(action: Pointer[GObject], parameter: Pointer[GVariant], data: A): None => None}
  var _parameter_type: Pointer[U8] tag = Pointer[U8]
  var _state: Pointer[U8] tag = Pointer[U8]
  var _change_state: @{(Pointer[GObject], Pointer[GVariant], Pointer[None] tag): None} = @{(action: Pointer[GObject], parameter: Pointer[GVariant], data: Pointer[None] tag): None => None}
  var _pad0: U64 = U64(0)
  var _pad1: U64 = U64(0)
  var _pad2: U64 = U64(0)

  fun ref set_name(name: String val) => _name = name.cstring()
  fun ref set_activate(activate: @{(Pointer[GObject], Pointer[GVariant], A): None}) =>  _activate = activate



