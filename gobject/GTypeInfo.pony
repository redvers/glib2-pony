
class GTypeInfo[A: Any]
  var ptr: GTypeInfoStruct[A]

  new create(data: A) =>
    ptr = GTypeInfoStruct[A](consume data)

