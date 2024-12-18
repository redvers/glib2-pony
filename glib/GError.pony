use @g_error_free[None](gerror: NullablePointer[GErrorStruct] tag)

class GError
  var ptr: NullablePointer[GErrorStruct] = NullablePointer[GErrorStruct].none()

  fun _final() =>
    if (not(ptr.is_none())) then
      @g_error_free(ptr)
    end
