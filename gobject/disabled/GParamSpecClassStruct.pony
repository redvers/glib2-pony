

/*
  Source: /usr/include/glib-2.0/gobject/gparam.h:245
  Original Name: _GParamSpecClass
  Struct Size (bits):  640
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [Struct size=64,fid: f135]: g_type_class
     000064: [FundamentalType(long unsigned int) size=64]: value_type
     000128: [PointerType size=64]->[FunctionType] -- WRITE MANUALLY: finalize
     000192: [PointerType size=64]->[FunctionType] -- WRITE MANUALLY: value_set_default
     000256: [PointerType size=64]->[FunctionType] -- WRITE MANUALLY: value_validate
     000320: [PointerType size=64]->[FunctionType] -- WRITE MANUALLY: values_cmp
     000384: [PointerType size=64]->[FunctionType] -- WRITE MANUALLY: value_is_valid
     000448: [ArrayType size=(0-2)]->[PointerType size=64]->[FundamentalType(void) size=0] -- UNSUPPORTED - FIXME: dummy
*/
struct GParamSpecClassStruct
    embed g_type_class: GTypeClassStruct = GTypeClassStruct
    var value_type: U64 = U64(0)
    var finalize: Pointer[None] = Pointer[None]
    var value_set_default: Pointer[None] = Pointer[None]
    var value_validate: Pointer[None] = Pointer[None]
    var values_cmp: Pointer[None] = Pointer[None]
    var value_is_valid: Pointer[None] = Pointer[None]
    var dummy0: Pointer[None] = Pointer[None]
    var dummy1: Pointer[None] = Pointer[None]
    var dummy2: Pointer[None] = Pointer[None]
