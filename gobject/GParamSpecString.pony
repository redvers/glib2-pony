use @g_param_spec_string[GParamSpecStringStruct](name: Pointer[U8] tag, nick: Pointer[U8] tag, blurb: Pointer[U8] tag, default_value: Pointer[U8] tag, flags: I32)

class GParamSpecString
  var ptr: GParamSpecStringStruct

  new create(name: String val, nick: String val, blurb: String val, default_value: String val, flags: I32 = 3) =>
    ptr = @g_param_spec_string(name.cstring(), nick.cstring(), blurb.cstring(), default_value.cstring(), flags)

