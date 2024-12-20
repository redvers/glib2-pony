

/*
  Source: /usr/include/glib-2.0/gobject/gparam.h:387
  Original Name: _GParamSpecTypeInfo
  Struct Size (bits):  448
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [FundamentalType(short unsigned int) size=16]: instance_size
     000016: [FundamentalType(short unsigned int) size=16]: n_preallocs
     000064: [PointerType size=64]->[FunctionType] -- WRITE MANUALLY: instance_init
     000128: [FundamentalType(long unsigned int) size=64]: value_type
     000192: [PointerType size=64]->[FunctionType] -- WRITE MANUALLY: finalize
     000256: [PointerType size=64]->[FunctionType] -- WRITE MANUALLY: value_set_default
     000320: [PointerType size=64]->[FunctionType] -- WRITE MANUALLY: value_validate
     000384: [PointerType size=64]->[FunctionType] -- WRITE MANUALLY: values_cmp
*/
struct GParamSpecTypeInfoStruct
    var instance_size: U16 = U16(0)
    var n_preallocs: U16 = U16(0)
    var instance_init: Pointer[None] = Pointer[None]
    var value_type: U64 = U64(0)
    var finalize: Pointer[None] = Pointer[None]
    var value_set_default: Pointer[None] = Pointer[None]
    var value_validate: Pointer[None] = Pointer[None]
    var values_cmp: Pointer[None] = Pointer[None]
