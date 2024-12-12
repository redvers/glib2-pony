use "collections"

primitive PonyTypes
  fun ppu8_to_array_string(ppu8: Pointer[Pointer[U8]]): Array[String val] val => None
    let pa: Array[Pointer[U8]] = Array[Pointer[U8]].from_cpointer(ppu8, 268435455)
    let results: Array[String val] trn = Array[String val]
    try
      for f in Range(0, 268435455) do
        if (pa(f)?.is_null()) then error end
        results.push(String.from_cstring(pa(f)?).clone())
      end
    end
    consume results
